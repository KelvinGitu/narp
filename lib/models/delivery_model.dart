class Delivery {
  final String id;
  final String senderName;
  final String recipientName;
  final String senderPhone;
  final String recipientPhone;
  final String senderInstructions;
  final String recipientInstructions;
  final String senderLocation;
  final String recipientLocation;
  final String deliveryPrice;
  Delivery({
    required this.id,
    required this.senderName,
    required this.recipientName,
    required this.senderPhone,
    required this.recipientPhone,
    required this.senderInstructions,
    required this.recipientInstructions,
    required this.senderLocation,
    required this.recipientLocation,
    required this.deliveryPrice,
  });

  Delivery copyWith({
    String? id,
    String? senderName,
    String? recipientName,
    String? senderPhone,
    String? recipientPhone,
    String? senderInstructions,
    String? recipientInstructions,
    String? senderLocation,
    String? recipientLocation,
    String? deliveryPrice,
  }) {
    return Delivery(
      id: id ?? this.id,
      senderName: senderName ?? this.senderName,
      recipientName: recipientName ?? this.recipientName,
      senderPhone: senderPhone ?? this.senderPhone,
      recipientPhone: recipientPhone ?? this.recipientPhone,
      senderInstructions: senderInstructions ?? this.senderInstructions,
      recipientInstructions: recipientInstructions ?? this.recipientInstructions,
      senderLocation: senderLocation ?? this.senderLocation,
      recipientLocation: recipientLocation ?? this.recipientLocation,
      deliveryPrice: deliveryPrice ?? this.deliveryPrice,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'senderName': senderName,
      'recipientName': recipientName,
      'senderPhone': senderPhone,
      'recipientPhone': recipientPhone,
      'senderInstructions': senderInstructions,
      'recipientInstructions': recipientInstructions,
      'senderLocation': senderLocation,
      'recipientLocation': recipientLocation,
      'deliveryPrice': deliveryPrice,
    };
  }

  factory Delivery.fromMap(Map<String, dynamic> map) {
    return Delivery(
      id: map['id'] as String,
      senderName: map['senderName'] as String,
      recipientName: map['recipientName'] as String,
      senderPhone: map['senderPhone'] as String,
      recipientPhone: map['recipientPhone'] as String,
      senderInstructions: map['senderInstructions'] as String,
      recipientInstructions: map['recipientInstructions'] as String,
      senderLocation: map['senderLocation'] as String,
      recipientLocation: map['recipientLocation'] as String,
      deliveryPrice: map['deliveryPrice'] as String,
    );
  }

  @override
  String toString() {
    return 'Delivery(id: $id, senderName: $senderName, recipientName: $recipientName, senderPhone: $senderPhone, recipientPhone: $recipientPhone, senderInstructions: $senderInstructions, recipientInstructions: $recipientInstructions, senderLocation: $senderLocation, recipientLocation: $recipientLocation, deliveryPrice: $deliveryPrice)';
  }

  @override
  bool operator ==(covariant Delivery other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.senderName == senderName &&
      other.recipientName == recipientName &&
      other.senderPhone == senderPhone &&
      other.recipientPhone == recipientPhone &&
      other.senderInstructions == senderInstructions &&
      other.recipientInstructions == recipientInstructions &&
      other.senderLocation == senderLocation &&
      other.recipientLocation == recipientLocation &&
      other.deliveryPrice == deliveryPrice;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      senderName.hashCode ^
      recipientName.hashCode ^
      senderPhone.hashCode ^
      recipientPhone.hashCode ^
      senderInstructions.hashCode ^
      recipientInstructions.hashCode ^
      senderLocation.hashCode ^
      recipientLocation.hashCode ^
      deliveryPrice.hashCode;
  }
}
