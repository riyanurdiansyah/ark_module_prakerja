import 'package:equatable/equatable.dart';

class MpLinkEntity extends Equatable {
  final String mpName;
  final String mpLogo;
  final String mpProdukLink;

  const MpLinkEntity({
    required this.mpName,
    required this.mpLogo,
    required this.mpProdukLink,
  });

  MpLinkEntity copyWith({
    String? mpName,
    String? mpLogo,
    String? mpProdukLink,
  }) =>
      MpLinkEntity(
        mpName: mpName ?? this.mpName,
        mpLogo: mpLogo ?? this.mpLogo,
        mpProdukLink: mpProdukLink ?? this.mpProdukLink,
      );

  Map<String, dynamic> toJson() => {
        "mp_name": mpName,
        "mp_logo": mpLogo,
        "mp_produk_link": mpProdukLink,
      };
  @override
  List<Object?> get props => [mpName, mpLogo, mpProdukLink];
}
