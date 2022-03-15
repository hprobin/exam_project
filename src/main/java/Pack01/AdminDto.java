package Pack01;

public class AdminDto {
	String ques;
	String ex1;
	String ex2;
	String ex3;
	String ex4;
	String ans;
	
	AdminDto(String ques, String ex1, String ex2, String ex3, String ex4, String ans){
		this.ques = ques;
		this.ex1 = ex1;
		this.ex2 = ex2;
		this.ex3 = ex3;
		this.ex4 = ex4;
		this.ans = ans;
	}

	public String getQues() {
		return ques;
	}

	public void setQues(String ques) {
		this.ques = ques;
	}

	public String getEx1() {
		return ex1;
	}

	public void setEx1(String ex1) {
		this.ex1 = ex1;
	}

	public String getEx2() {
		return ex2;
	}

	public void setEx2(String ex2) {
		this.ex2 = ex2;
	}

	public String getEx3() {
		return ex3;
	}

	public void setEx3(String ex3) {
		this.ex3 = ex3;
	}

	public String getEx4() {
		return ex4;
	}

	public void setEx4(String ex4) {
		this.ex4 = ex4;
	}

	public String getAns() {
		return ans;
	}

	public void setAns(String ans) {
		this.ans = ans;
	}
	
	
}
