package nsc.ojt.board.entity;

import java.util.Date;

public class BOARD {
	private int B_NUM; 
	private int P_NUM; 
	private String IP_ADDRESS; 
	private String TITLE; 
	private String CONTENTS; 
	private String PASSWD; 
	private int CNT; 
	private Date INPUTDATE;
	
	public BOARD() {
		// TODO Auto-generated constructor stub
	}

	public BOARD(int b_NUM, int p_NUM, String iP_ADDRESS, String tITLE, String cONTENTS, String pASSWD, int cNT,
			Date iNPUTDATE) {
		super();
		B_NUM = b_NUM;
		P_NUM = p_NUM;
		IP_ADDRESS = iP_ADDRESS;
		TITLE = tITLE;
		CONTENTS = cONTENTS;
		PASSWD = pASSWD;
		CNT = cNT;
		INPUTDATE = iNPUTDATE;
	}

	public int getB_NUM() {
		return B_NUM;
	}

	public void setB_NUM(int b_NUM) {
		B_NUM = b_NUM;
	}

	public int getP_NUM() {
		return P_NUM;
	}

	public void setP_NUM(int p_NUM) {
		P_NUM = p_NUM;
	}

	public String getIP_ADDRESS() {
		return IP_ADDRESS;
	}

	public void setIP_ADDRESS(String iP_ADDRESS) {
		IP_ADDRESS = iP_ADDRESS;
	}

	public String getTITLE() {
		return TITLE;
	}

	public void setTITLE(String tITLE) {
		TITLE = tITLE;
	}

	public String getCONTENTS() {
		return CONTENTS;
	}

	public void setCONTENTS(String cONTENTS) {
		CONTENTS = cONTENTS;
	}

	public String getPASSWD() {
		return PASSWD;
	}

	public void setPASSWD(String pASSWD) {
		PASSWD = pASSWD;
	}

	public int getCNT() {
		return CNT;
	}

	public void setCNT(int cNT) {
		CNT = cNT;
	}

	public Date getINPUTDATE() {
		return INPUTDATE;
	}

	public void setINPUTDATE(Date iNPUTDATE) {
		INPUTDATE = iNPUTDATE;
	}
	
	
}
