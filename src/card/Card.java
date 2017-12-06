package card;

public class Card {
	protected /* @ spec_public @ */ Client owner = new Client("Client User", 22, "UFRN", "001.222.345", "075.573.249",
			54321);
	protected /* @ spec_public @ */ double bill;
	protected /* @ spec_public @ */ int cardNumber;
	protected /* @ spec_public @ */ int expMonth;
	protected /* @ spec_public @ */ int expYear;
	protected /* @ spec_public @ */ static int cardsAmount = 0;
	protected /* @ spec_public @ */ int pass;
	protected /* @ spec_public @ */ boolean blocked;
	protected /* @ spec_public @ */ double bankInterstRate;

	/*
	 * @
	 * 
	 * @ initially Client;
	 * 
	 * @ public invariant 0 <= bill;
	 * 
	 * @ public invariant cardNumber > 0;
	 * 
	 * @ public invariant 1 <= expMonth && expMonth <= 12;
	 * 
	 * @ public invariant expYear > 2016;
	 * 
	 * @ public invariant cardsAmount >= 0;
	 * 
	 * @ public invariant pass > 999;
	 * 
	 * @ public invariant bankInterstRate > 0.01;
	 * 
	 * @
	 */

	/*
	 * @
	 * 
	 * @ ensures this.bill == 0;
	 * 
	 * @ ensures 1 <= this.expMonth && this.expMonth <= 12;
	 * 
	 * @ ensures this.expYear > 2016;
	 * 
	 * @ ensures this.cardNumber > 0;
	 * 
	 * @ ensures this.pass > 9999;
	 * 
	 * @ ensures this.cardsAmount == \old(cardsAmount)+1;
	 * 
	 * @ public initially this.bankInterstRate == 0.1;
	 * 
	 * @ ensures this.blocked == false;
	 * 
	 * @
	 */
	public Card(Client owner) {
		this.owner = owner;
		this.bill = 0;
		this.expMonth = 12;
		this.expYear = 2022; // 5 years from now.
		Card.cardsAmount++;
		this.cardNumber = expMonth * 10000000 + expYear * 1000 + Card.cardsAmount; // generates a number like
																					// '122022001' just because ;D
		this.pass = owner.getPass();
		this.bankInterstRate = 0.1; // 10%
		this.blocked = false;

	}

	public /* @ pure @ */ Client getOwner() {
		return owner;
	}

	/*
	 * @
	 * 
	 * @ ensures this.owner == owner;
	 * 
	 * @
	 */
	public void setOwner(Client owner) {
		this.owner = owner;
	}

	public /* @ pure @ */ double getBill() {
		return bill;
	}

	public /* @ pure @ */ int getCardNumber() {
		return cardNumber;
	}

	/*
	 * @
	 * 
	 * @ requires cardNumber > 0;
	 * 
	 * @ ensures this.cardNumber == cardNumber;
	 * 
	 * @
	 */
	public void setCardNumber(int cardNumber) {
		this.cardNumber = cardNumber;
	}

	public /* @ pure @ */ int getExpMonth() {
		return expMonth;
	}

	/*
	 * @
	 * 
	 * @ requires expMonth > \old(expMonth);
	 * 
	 * @ ensures this.expMonth == expMonth;
	 * 
	 * @
	 */
	public void setExpMonth(int expMonth) {
		this.expMonth = expMonth;
	}

	public /* @ pure @ */ int getExpYear() {
		return expYear;
	}

	/*
	 * @
	 * 
	 * @ requires expYear > \old(expYear);
	 * 
	 * @ ensures this.expYear == expYear;
	 * 
	 * @
	 */
	public void setExpYear(int expYear) {
		this.expYear = expYear;
	}

	public /* @ pure @ */ int getCardsAmount() {
		return cardsAmount;
	}

	/*
	 * @
	 * 
	 * @ requires cardsAmount > \old(cardsAmount);
	 * 
	 * @ ensures cardsAmount == cardsAmount;
	 * 
	 * @
	 */
	public void setCardsAmount(int cardsAmount) {
		Card.cardsAmount = cardsAmount;
	}

	public /* @ pure @ */ int getPass() {
		return pass;
	}

	/*
	 * @
	 * 
	 * @ requires pass > 999;
	 * 
	 * @ assignable pass;
	 * 
	 * @ public normal behavior
	 * 
	 * @ requires pass == owner.pass;
	 * 
	 * @ signals_only setPass;
	 * 
	 * @ signals (setPass pass)
	 * 
	 * @ pass == pass;
	 * 
	 * @ ensures owner.pass == pass;
	 * 
	 * @ ensures this.pass == pass;
	 * 
	 * @
	 */
	public void setPass(int pass) {
		this.owner.setPass(pass);
		this.pass = pass;

		System.out.println("Password changed OK");
	}

	// =============

	/*
	 * @
	 * 
	 * @ requires pass == owner.getPass();
	 * 
	 * @ requires pass == pass;
	 * 
	 * @
	 */
	public /* @ pure @ */ void myBill(int pass) {
		System.out.println("You owe: $" + this.bill);
	}

	/*
	 * @
	 * 
	 * @ requires pass == owner.getPass();
	 * 
	 * @ requires pass == pass;
	 * 
	 * @
	 */
	public /* @ pure @ */ void myStatus(int pass) {
		System.out.println("Card Status ");
		System.out.println(this.blocked ? "Blocked" : "Active");
		myBill(pass);
	}

	/*
	 * @
	 * 
	 * @ requires pass == owner.getPass();
	 * 
	 * @ requires blocked == false;
	 * 
	 * @ assignable bill;
	 * 
	 * @ public constraint bill >= \old(bill);
	 * 
	 * @
	 */
	public void useCard(double purchaseValue, int pass) {
		if (pass == owner.getPass()) {
			this.bill += purchaseValue;
		}
	}

	/*
	 * @
	 * 
	 * @ requires pass == owner.getPass();
	 * 
	 * @ requires blocked == false;
	 * 
	 * @ requires 0 < payValue && payValue <= bill;
	 * 
	 * @ assignable bill;
	 * 
	 * @ public constraint bill <= \old(bill);
	 * 
	 * @
	 */
	public void payBill(double payValue, int pass) {
		if (pass == owner.getPass()) {
			double rate = 0;
			if (payValue < this.bill) {
				rate = (this.bill - payValue) * bankInterstRate;
			}
			this.bill -= payValue + rate;
		}
	}

	/*
	 * @
	 * 
	 * @ requires pass == owner.getPass();
	 * 
	 * @ requires blocked == false;
	 * 
	 * @ requires bill == 0;
	 * 
	 * @
	 */
	public /* @ pure @ */ void cancelCard(int pass) {
		if (pass == owner.getPass()) {
			System.out.println("Your card " + this.cardNumber + " has been canceled.");
		}
	}

}
