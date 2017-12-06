
public class Platinum extends Card {
	protected /*@ spec_public @*/ int miles;
	/*@
	  @ public invariant miles >= 0;
	  @ public invariant bankInterstRate > 0.01;
	  @*/

	/*@
	  @ ensures this.bankInterstRate == 0.1;
	  @ ensures this.miles == 0;
	  @*/
	public Platinum(Client owner) {
		super(owner);
		this.bankInterstRate = 0.1;	// 10%
		this.miles = 0;
	}
	
	/*@
	  @ requires miles >= 0;
	  @*/
	@Override
	public /*@ pure @*/ void myStatus(int pass) {
		// TODO Auto-generated method stub
		super.myStatus(pass);
		myMiles(pass);
	}
	
	/*@
	  @ requires miles >= 0;
	  @ public constraint miles >= \old(miles);
	  @*/
	@Override
	public void useCard(double purchaseValue, int pass) {
		// TODO Auto-generated method stub
		super.useCard(purchaseValue, pass);
		this.miles += (int) purchaseValue;
	}
	
	/*@
	  @ requires miles >= 0;
	  @*/
	public /*@ pure @*/ void myMiles(int pass) {
		System.out.println("Miles: " + this.miles);
	}

}
