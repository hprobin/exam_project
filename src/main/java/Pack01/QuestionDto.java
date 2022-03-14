package Pack01;

import java.util.List;

public class QuestionDto {
	int index;
	String ques;
	String n1;
	String n2;
	String n3;
	String n4;
	int ans;
	
	QuestionDto(int index, String ques, 
			String n1, String n2,
			String n3, String n4, 
			int ans){
		this.index = index;
		this.ques = ques;
		this.n1 = n1;
		this.n2 = n2;
		this.n3 = n3;
		this.n4 = n4;
		this.ans = ans;
	}
	public int getIndex() {
		return index;
	}
	public String getQues() {
		return ques;
	}
	public String getN1() {
		return n1;
	}
	public String getN2() {
		return n2;
	}
	public String getN3() {
		return n3;
	}
	public String getN4() {
		return n4;
	}
	public int getAns() {
		return ans;
	}
}
