import 'package:ark_module_prakerja/src/domain/entities/mp_link_entity.dart';

class MpLinkDTO extends MpLinkEntity {
  const MpLinkDTO({
    required super.mpName,
    required super.mpLogo,
    required super.mpProdukLink,
  });

  factory MpLinkDTO.fromJson(Map<String, dynamic> json) => MpLinkDTO(
        mpName: json["mp_name"],
        mpLogo: json["mp_logo"],
        mpProdukLink: json["mp_produk_link"],
      );
}
