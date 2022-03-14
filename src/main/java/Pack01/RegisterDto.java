package Pack01;

public class RegisterDto {
	String name;
	String number;
	String number2;
	
	RegisterDto(String name, String number, String number2){
		this.name = name;
		this.number = number;
		this.number2 = number2;
	}

	RegisterDto(String name, String number){
		this.name = number;
		this.number = name;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}
	
	public String getNumber2() {
		return number2;
	}
	
	public void setNumber2(String number2) {
		this.number2 = number2;
	}
}
