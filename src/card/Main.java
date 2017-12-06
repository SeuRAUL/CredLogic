package card;

public class Main {

	public static void main(String[] args) {
		Client circular = new Client("Client Universitario", 20, "UFRN", "001.222.345", "075.573.249", 54321);
		Client tesla = new Client("Client Entrepeneur", 28, "Silicon", "002.333.456", "086.684.350", 98765);

		System.out.println("Clients createds!");
		System.out.println("");

		University uni = new University(circular);
		Platinum pla = new Platinum(tesla);

		System.out.println("Cards createds!");
		System.out.println("");

		System.out.println("======================");
		System.out.println();

		System.out.println("Check Cartão Universitário: ");
		System.out.println("└─Dono: " + uni.getOwner().getName());
		System.out.println("└─Nº do cartão: " + uni.getCardNumber());
		System.out.println("└─Validade: " + uni.getExpMonth() + "/" + uni.getExpYear());
		System.out.println("└─Limite do cartão: $" + uni.getLimit());
		System.out.println("└─Crédito disponível: $" + uni.getCredit());

		System.out.println();

		System.out.println("Check Cartão Platina: ");
		System.out.println("└─Dono: " + pla.getOwner().getName());
		System.out.println("└─Nº do cartão: " + pla.getCardNumber());
		System.out.println("└─Validade: " + pla.getExpMonth() + "/" + pla.getExpYear());

		System.out.println();
		System.out.println("======================");
		System.out.println();

		System.out.println("╔═════════════╗");
		System.out.println("║UNIVERSITÁRIO║");
		System.out.println("╚═════════════╝");
		uni.myStatus(circular.getPass());
		System.out.println();

		System.out.println("Compra de 100");
		uni.useCard(100, circular.getPass());
		System.out.println();

		uni.myStatus(circular.getPass());
		System.out.println();

		System.out.println("Compra de 200");
		uni.useCard(200, circular.getPass());
		System.out.println();

		uni.myStatus(circular.getPass());
		System.out.println();

		System.out.println("Parcelar Fatura");
		uni.parcelBill(300, 3);
		System.out.println();

		uni.myStatus(circular.getPass());
		System.out.println();

		System.out.println();
		System.out.println("╔═══════╗");
		System.out.println("║PLATINA║");
		System.out.println("╚═══════╝");
		pla.myStatus(tesla.getPass());

		System.out.println();
		System.out.println("Compra de 10.000");
		pla.useCard(10000, tesla.getPass());
		System.out.println();

		pla.myStatus(tesla.getPass());

		System.out.println();
		System.out.println("Compra de 8.000");
		pla.useCard(8000, tesla.getPass());
		System.out.println();

		pla.myStatus(tesla.getPass());

		System.out.println();
		System.out.println("Pagar 10.000");
		pla.payBill(10000, tesla.getPass());
		System.out.println();

		pla.myStatus(tesla.getPass());
	}

}
