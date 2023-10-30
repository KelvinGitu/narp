class RecipientDetails {
  String recipientName;
  String recipientPhone;
  String recipientInstructions;
  RecipientDetails({
    required this.recipientName,
    required this.recipientPhone,
    required this.recipientInstructions,
  });

  RecipientDetails copyWith({
    String? recipientName,
    String? recipientPhone,
    String? recipientInstructions,
  }) {
    return RecipientDetails(
      recipientName: recipientName ?? this.recipientName,
      recipientPhone: recipientPhone ?? this.recipientPhone,
      recipientInstructions:
          recipientInstructions ?? this.recipientInstructions,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recipientName': recipientName,
      'recipientPhone': recipientPhone,
      'recipientInstructions': recipientInstructions,
    };
  }

  factory RecipientDetails.fromMap(Map<String, dynamic> map) {
    return RecipientDetails(
      recipientName: map['recipientName'] as String,
      recipientPhone: map['recipientPhone'] as String,
      recipientInstructions: map['recipientInstructions'] as String,
    );
  }

  @override
  String toString() =>
      'RecipientDetails(recipientName: $recipientName, recipientPhone: $recipientPhone, recipientInstructions: $recipientInstructions)';

  @override
  bool operator ==(covariant RecipientDetails other) {
    if (identical(this, other)) return true;

    return other.recipientName == recipientName &&
        other.recipientPhone == recipientPhone &&
        other.recipientInstructions == recipientInstructions;
  }

  @override
  int get hashCode =>
      recipientName.hashCode ^
      recipientPhone.hashCode ^
      recipientInstructions.hashCode;
}
