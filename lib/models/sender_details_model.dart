class SenderDetails {
  final String senderName;
  final String senderPhone;
  final String senderInstructions;
  SenderDetails({
    required this.senderName,
    required this.senderPhone,
    required this.senderInstructions,
  });

  SenderDetails copyWith({
    String? senderName,
    String? senderPhone,
    String? senderInstructions,
  }) {
    return SenderDetails(
      senderName: senderName ?? this.senderName,
      senderPhone: senderPhone ?? this.senderPhone,
      senderInstructions: senderInstructions ?? this.senderInstructions,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'senderName': senderName,
      'senderPhone': senderPhone,
      'senderInstructions': senderInstructions,
    };
  }

  factory SenderDetails.fromMap(Map<String, dynamic> map) {
    return SenderDetails(
      senderName: map['senderName'] as String,
      senderPhone: map['senderPhone'] as String,
      senderInstructions: map['senderInstructions'] as String,
    );
  }

  @override
  String toString() =>
      'SenderDetails(senderName: $senderName, senderPhone: $senderPhone, senderInstructions: $senderInstructions)';

  @override
  bool operator ==(covariant SenderDetails other) {
    if (identical(this, other)) return true;

    return other.senderName == senderName &&
        other.senderPhone == senderPhone &&
        other.senderInstructions == senderInstructions;
  }

  @override
  int get hashCode =>
      senderName.hashCode ^ senderPhone.hashCode ^ senderInstructions.hashCode;
}
