package bean;
// Generated 2017-6-20 0:54:45 by Hibernate Tools 3.5.0.Final

import java.util.HashSet;
import java.util.Set;

/**
 * Transportation generated by hbm2java
 */
public class Transportation implements java.io.Serializable {

	private String transportationId;
	private String departure;
	private String destintion;
	private Set provincecenters = new HashSet(0);

	public Transportation() {
	}

	public Transportation(String transportationId) {
		this.transportationId = transportationId;
	}

	public Transportation(String transportationId, String departure, String destintion, Set provincecenters) {
		this.transportationId = transportationId;
		this.departure = departure;
		this.destintion = destintion;
		this.provincecenters = provincecenters;
	}

	public String getTransportationId() {
		return this.transportationId;
	}

	public void setTransportationId(String transportationId) {
		this.transportationId = transportationId;
	}

	public String getDeparture() {
		return this.departure;
	}

	public void setDeparture(String departure) {
		this.departure = departure;
	}

	public String getDestintion() {
		return this.destintion;
	}

	public void setDestintion(String destintion) {
		this.destintion = destintion;
	}

	public Set getProvincecenters() {
		return this.provincecenters;
	}

	public void setProvincecenters(Set provincecenters) {
		this.provincecenters = provincecenters;
	}

}
