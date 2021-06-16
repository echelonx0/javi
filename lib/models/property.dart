class Property {
  final String documentID;
  final String approvedUse;
  final int askingPrice;
  final bool forSale;
  final String longDescription;
  final String shortDescription;
  final String titleType;
  final int totalBathrooms;
  final int totalRooms;
  final int totalSize;
  final String agentEmail;
  final String location;
  final int agentNumber;
  final int locationLong;
  final int locationLat;
  final String agency;
  final String imageOne;
  final String propertyMessage;
  final List locationsArray;
  final List imagesArray;
  final String rentOrBuy;
  final String agentLogo;
  final String agentAddress;

  Property(
      this.documentID,
      this.approvedUse,
      this.askingPrice,
      this.forSale,
      this.longDescription,
      this.shortDescription,
      this.titleType,
      this.totalBathrooms,
      this.totalRooms,
      this.totalSize,
      this.agentEmail,
      this.location,
      this.agentNumber,
      this.locationLong,
      this.locationLat,
      this.agency,
      this.imageOne,
      this.propertyMessage,
      this.locationsArray,
      this.imagesArray,
      this.rentOrBuy,
      this.agentLogo,
      this.agentAddress);
}
