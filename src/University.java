import java.util.Vector;

public class University extends Card {
	protected/* @ spec_public */ static double limit;
	protected/* @ spec_public */ double credit;
	protected/* @ spec_public */ Vector<Double> parcels = new Vector<>();
	/*
	 @ public invariant 0 <= credit && credit <= limit;
	 @ public invariant parcels != null;
	 @	&& (\forall int i;
	 @		0 <= i && i < parcels.size();
	 @		parcels.get(i) != null);
	 */

	/*
	 @ ensures this.credit > 0;
	 @ ensures University.limit > 0;
	 @ ensures this.parcels.size() == 1;
	 @ ensures (this.credit + this.bill) == University.limit;
	 @ ensures this.bankInterstRate == 0.07;
	 */
	public University(Client owner) {
		super(owner);
		University.limit = 1000;
		this.credit = 1000;
		this.parcels.add(0.0);	// first and only parcel
		this.bankInterstRate = 0.07;	// 7%
	}


	public/*@ pure @*/ double getCredit() {
		return credit;
	}

	public/*@ pure @*/ double getLimit() {
		return limit;
	}

	/*
	 @ requires limit != \old(limit);
	 @ requires limit >= bill;
	 @ ensures University.limit == limit;
	 @ ensures University.credit == University.limit - this.bill;
	 */
	public void setLimit(double limit) {
		this.credit = limit - bill;
		University.limit = limit;
	}

	/*
	 @ requires pass == owner.getPass();
	 @ requires pass == pass;
	 */
	public void myLimit(int pass) {
		System.out.println("The limit of this card is: $" + University.limit);
	}

	/*
	 @ requires parcels.size() > 0;
	 @ requires parcels != null;
	 @ requires pass == owner.getPass();
	 @ requires pass == pass;
	 */
	public/*@ pure @*/ double thisMonthBill(int pass) {
		System.out.println("This mounth you owe: $" + this.parcels.firstElement());
		System.out.println("└─ you total bill is: $" + this.bill);
		return this.parcels.firstElement();
	}
	
	/*
	 @ requires parcels.size() > 0;
	 @ requires parcels != null;
	 */
	@Override
	public void myBill(int pass) {
		// TODO Auto-generated method stub
		super.myBill(pass);
		System.out.println("└─ spread accross " + this.parcels.size() + " parcels.");
	}

	/*
	 @ requires parcels.size() > 0;
	 @ requires parcels != null;
	 @ requires pass == owner.getPass();
	 @ requires pass == pass;
	 */
	public/*@ pure @*/ void myParcels(int pass) {
		System.out.println("└──" + parcels.size() + " parcels:");
		for (int i = 0; i < parcels.size(); i++) {
			System.out.println("  └ " + i + ": $" + parcels.get(i));
		}
	}

	/*
	 @ requires pass == owner.getPass();
	 @ requires pass == pass;
	 */
	public/*@ pure @*/ void myCredit(int pass) {
		System.out.println("You have: $" + this.credit + " of credit.");
	}
	
	
	@Override
	public void myStatus(int pass) {
		// TODO Auto-generated method stub
		super.myStatus(pass);
		myParcels(pass);
		myLimit(pass);
		myCredit(pass);
	}
	
	/*
	 @ requires purchaseValue > 0 && purchaseValue <= credit;
	 @ assignable credit;
	 @ public constraint credit <= \old(credit);
	 @ ensures (this.credit + this.bill) == University.limit;
	 @ ensures parcels.size() == \old(parcels.size());
	 @ ensures parcels.firstElement() > \old(parcels.firstElement());
	 */
	@Override
	public void useCard(double purchaseValue, int pass) {
		// TODO Auto-generated method stub
		// super.useCard(purchaseValue, pass);
		if (pass == owner.getPass()) {
			this.credit -= purchaseValue;
			this.bill += purchaseValue;
			this.parcels.set(0, this.parcels.firstElement() + purchaseValue);
		}
	}

	/*
	 @ requires blocked == false;
	 @ requires value > 0 && value <= parcels.firstElement();
	 @ assignable credit;
	 @ assignable bill;
	 @ public constraint bill >= \old(bill);
	 @ public constraint credit <= \old(credit);
	 @ ensures parcels.size() >= \old(parcels.size());
	 @ ensures parcels.firstElement() > \old(parcels.firstElement());
	 */
	public void parcelBill(double value, int quantParcels) {
		double parcelValues = (value / quantParcels) * (1+bankInterstRate);
		for (int i = 0; i < this.parcels.size(); i++) {
			this.parcels.set(i, this.parcels.elementAt(i) + parcelValues);
		}
		if (quantParcels > this.parcels.size()) {
			int quantParcelsLeft = quantParcels - this.parcels.size();
			while(quantParcelsLeft > 0) {
				this.parcels.add(parcelValues);
				quantParcelsLeft--;
			}
		}
		double rates = (parcelValues*quantParcels) * bankInterstRate;
		this.bill += rates;
		this.credit -= rates;
		
		System.out.println("Your bill was parceled in " + quantParcels + " times of " + parcelValues);
		System.out.println("└── in a total of: $" + parcelValues * quantParcels);
	}
	
	/*
	 @ assignable credit;
	 @ public constraint credit >= \old(credit);
	 @ ensures (this.credit + this.bill) == University.limit;
	 */
	@Override
	public void payBill(double payValue, int pass) {
		// TODO Auto-generated method stub
		// super.payBill(payValue, pass);
		
		if (pass == owner.getPass()) {
			this.credit += payValue;
			this.bill -= payValue;
			if (payValue < thisMonthBill(pass)) {
				double value2parcel = this.parcels.remove(0) - payValue;
				parcelBill(value2parcel, (int) value2parcel%50);
			}
		}
		if( this.bill > University.limit) {
			this.blocked = true;
			this.credit = 0;
		}
	}
}
