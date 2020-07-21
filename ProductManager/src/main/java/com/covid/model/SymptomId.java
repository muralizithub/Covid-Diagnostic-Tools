package com.covid.model;

import java.io.Serializable;

import javax.persistence.Embeddable;

@Embeddable
public class SymptomId implements Serializable{

	private int sympId;

	private int diagId;
	
	public SymptomId(int sympId,int diagId) {
		this.sympId = sympId;
		this.diagId = diagId;
	}

	public int getSympId() {
		return sympId;
	}

	public void setSympId(int sympId) {
		this.sympId = sympId;
	}

	public int getDiagId() {
		return diagId;
	}

	public void setDiagId(int diagId) {
		this.diagId = diagId;
	}
	
}
