package card;
/**
 * @author seuraul
 *
 */
public class Client {
	public /*@ spec_public @*/ String name;
	public /*@ spec_public @*/ int age;
	public /*@ spec_public @*/ String address;
	public /*@ spec_public @*/ String rg;
	public /*@ spec_public @*/ String cpf;
	public /*@ spec_public @*/ int pass;
	 //@ public invariant name != "";
	 //@ public invariant age > 0;
	 //@ public invariant address != "";
	 //@ public invariant rg != "";
	 //@ public invariant cpf != "";
	 //@ public invariant pass > 999;	
	
	/*@
	  @ requires name != "";
	  @ requires address != "";
	  @ requires rg != "";
	  @ requires cpf != "";
	  @ requires age > 0;
	  @ requires pass > 999;
	  @ ensures name == name;
	  @ ensures address == address;
	  @ ensures rg == rg;
	  @ ensures cpf == cpf;
	  @*/
	public Client(String name, int age, String address, String rg, String cpf, int pass) {
		this.name = name;
		this.age = age;
		this.address = address;
		this.rg = rg;
		this.cpf = cpf;
		this.pass = pass;
	}

	public /*@ pure @*/ String getName() {
		return name;
	}
	
	/*@
	  @	requires name != "";
	  @	ensures name == name;
	  @*/
	public void setName(String name) {
		this.name = name;
	}
	
	public /*@ pure @*/ int getAge() {
		return age;
	}
	
	/*@
	  @	requires age > 0;
	  @	ensures age == age;
	  @*/
	public void setAge(int age) {
		this.age = age;
	}

	public /*@ pure @*/ String getAddress() {
		return address;
	}

	/*@
	  @	requires address != "";
	  @	ensures address == address;
	  @*/
	public void setAddress(String address) {
		this.address = address;
	}

	public /*@ pure @*/ String getRg() {
		return rg;
	}

	/*@
	  @	requires rg != "";
	  @	ensures rg == rg;
	  @*/
	public void setRg(String rg) {
		this.rg = rg;
	}

	public /*@ pure @*/ String getCpf() {
		return cpf;
	}

	/*@
	  @	requires cpf != "";
	  @	ensures cpf == cpf;
	  @*/
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public /*@ pure @*/ int getPass() {
		return pass;
	}

	/*@
	  @	requires pass > 999;
	  @	ensures pass != \old(pass);
	  @	ensures pass == pass;
	  @*/
	public void setPass(int pass) {
		this.pass = pass;
	}
	
	
	
}
