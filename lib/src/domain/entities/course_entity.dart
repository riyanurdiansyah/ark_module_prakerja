import 'dart:convert';

import 'package:ark_module_prakerja/src/domain/entities/price_html_entity.dart';
import 'package:equatable/equatable.dart';

import 'course_flag_entity.dart';
import 'instructor_entity.dart';
import 'mp_link_entity.dart';

String coursePrakerjaEntityToJson(ResponseCourseEntity data) =>
    json.encode(data.toJson());

class ResponseCourseEntity extends Equatable {
  const ResponseCourseEntity({
    required this.success,
    required this.data,
  });

  final bool success;
  final List<ResponseDataCourseEntity> data;

  ResponseCourseEntity copyWith({
    bool? success,
    List<ResponseDataCourseEntity>? data,
  }) =>
      ResponseCourseEntity(
        success: success ?? this.success,
        data: data ?? this.data,
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };

  @override
  List<Object?> get props => [success, data];
}

class ResponseDataCourseEntity extends Equatable {
  const ResponseDataCourseEntity({
    required this.course,
  });

  final CourseEntity course;

  ResponseDataCourseEntity copyWith({
    CourseEntity? course,
  }) =>
      ResponseDataCourseEntity(
        course: course ?? this.course,
      );

  Map<String, dynamic> toJson() => {
        "course": course.toJson(),
      };

  @override
  List<Object?> get props => [course];
}

class CourseEntity extends Equatable {
  const CourseEntity({
    required this.id,
    required this.name,
    required this.slug,
    // required this.dateCreated,
    // required this.status,
    required this.price,
    // required this.productId,
    required this.priceHtml,
    required this.totalStudents,
    // required this.seats,
    // required this.startDate,
    required this.averageRating,
    required this.ratingCount,
    required this.courseDurationTime,
    required this.featuredImage,
    // required this.categories,
    required this.description,
    required this.courseFlag,
    // required this.thumbnailSquare,
    required this.instructors,
    required this.od,
    required this.enableFaceRecog,
    required this.mpLinks,
    required this.ikhtisar,
    required this.peluangPelatihan,
    required this.aspekKompetensi,
    required this.ygAkanDipelajari,
    required this.skillYgAkanDiperoleh,
    required this.fotoInstruktur,
    required this.namaInstruktur,
    required this.jabatanInstructureText,
    required this.descriptionInstruktur,
    // required this.pmoKategori,
    required this.tujuanUmum,
    required this.tujuanKhusus,
    required this.sasaranKelompok,
    // required this.sasaranKompetensi,
    required this.standarKompetensi,
    required this.sertifikatKelulusanDesc,
    required this.sertifikatPenyelesaianUrl,
    required this.sertifikatKelulusanUrl,
    required this.sesiKonsultasi,
  });

  final int id;
  final String name;
  final String slug;
  // final int dateCreated;
  // final String status;
  final String price;
  // final String productId;
  final List<PriceHtmlEntity> priceHtml;
  final int totalStudents;
  // final String seats;
  // final bool startDate;
  final dynamic averageRating;
  final String ratingCount;
  final String courseDurationTime;
  final String featuredImage;
  // final List<dynamic> categories;
  final String description;
  final CourseFlagEntity courseFlag;
  // final String thumbnailSquare;
  final List<InstructorEntity> instructors;
  final bool od;
  final int enableFaceRecog;
  final List<MpLinkEntity> mpLinks;
  final String ikhtisar;
  final String peluangPelatihan;
  final String aspekKompetensi;
  final List<String> ygAkanDipelajari;
  final List<String> skillYgAkanDiperoleh;
  final List<String> fotoInstruktur;
  final List<String> namaInstruktur;
  final List<String> jabatanInstructureText;
  final List<String> descriptionInstruktur;
  // final String pmoKategori;
  final String tujuanUmum;
  final String tujuanKhusus;
  final String sasaranKelompok;
  // final String sasaranKompetensi;
  final String standarKompetensi;
  final String sertifikatKelulusanDesc;
  final String sertifikatPenyelesaianUrl;
  final String sertifikatKelulusanUrl;
  final String sesiKonsultasi;

  CourseEntity copyWith({
    int? id,
    String? name,
    String? slug,
    int? dateCreated,
    String? status,
    String? price,
    String? productId,
    List<PriceHtmlEntity>? priceHtml,
    int? totalStudents,
    String? seats,
    bool? startDate,
    String? averageRating,
    String? ratingCount,
    String? courseDurationTime,
    String? featuredImage,
    List<dynamic>? categories,
    String? description,
    CourseFlagEntity? courseFlag,
    String? thumbnailSquare,
    List<InstructorEntity>? instructors,
    bool? od,
    int? enableFaceRecog,
    List<MpLinkEntity>? mpLinks,
    String? ikhtisar,
    String? peluangPelatihan,
    String? aspekKompetensi,
    List<String>? ygAkanDipelajari,
    List<String>? skillYgAkanDiperoleh,
    List<String>? fotoInstruktur,
    List<String>? namaInstruktur,
    List<String>? jabatanInstructureText,
    List<String>? descriptionInstruktur,
    String? pmoKategori,
    String? tujuanUmum,
    String? tujuanKhusus,
    String? sasaranKelompok,
    String? sasaranKompetensi,
    String? standarKompetensi,
    String? sertifikatKelulusanDesc,
    String? sertifikatPenyelesaianUrl,
    String? sertifikatKelulusanUrl,
    String? sesiKonsultasi,
  }) =>
      CourseEntity(
        id: id ?? this.id,
        name: name ?? this.name,
        slug: slug ?? this.slug,
        // dateCreated: dateCreated ?? this.dateCreated,
        // status: status ?? this.status,
        price: price ?? this.price,
        // productId: productId ?? this.productId,
        priceHtml: priceHtml ?? this.priceHtml,
        totalStudents: totalStudents ?? this.totalStudents,
        // seats: seats ?? this.seats,
        // startDate: startDate ?? this.startDate,
        averageRating: averageRating ?? this.averageRating,
        ratingCount: ratingCount ?? this.ratingCount,
        courseDurationTime: courseDurationTime ?? this.courseDurationTime,
        featuredImage: featuredImage ?? this.featuredImage,
        // categories: categories ?? this.categories,
        description: description ?? this.description,
        courseFlag: courseFlag ?? this.courseFlag,
        // thumbnailSquare: thumbnailSquare ?? this.thumbnailSquare,
        instructors: instructors ?? this.instructors,
        od: od ?? this.od,
        enableFaceRecog: enableFaceRecog ?? this.enableFaceRecog,
        mpLinks: mpLinks ?? this.mpLinks,
        ikhtisar: ikhtisar ?? this.ikhtisar,
        peluangPelatihan: peluangPelatihan ?? this.peluangPelatihan,
        aspekKompetensi: aspekKompetensi ?? this.aspekKompetensi,
        ygAkanDipelajari: ygAkanDipelajari ?? this.ygAkanDipelajari,
        skillYgAkanDiperoleh: skillYgAkanDiperoleh ?? this.skillYgAkanDiperoleh,
        fotoInstruktur: fotoInstruktur ?? this.fotoInstruktur,
        namaInstruktur: namaInstruktur ?? this.namaInstruktur,
        jabatanInstructureText:
            jabatanInstructureText ?? this.jabatanInstructureText,
        descriptionInstruktur:
            descriptionInstruktur ?? this.descriptionInstruktur,
        // pmoKategori: pmoKategori ?? this.pmoKategori,
        tujuanUmum: tujuanUmum ?? this.tujuanUmum,
        tujuanKhusus: tujuanKhusus ?? this.tujuanKhusus,
        sasaranKelompok: sasaranKelompok ?? this.sasaranKelompok,
        // sasaranKompetensi: sasaranKompetensi ?? this.sasaranKompetensi,
        standarKompetensi: standarKompetensi ?? this.standarKompetensi,
        sertifikatKelulusanDesc:
            sertifikatKelulusanDesc ?? this.sertifikatKelulusanDesc,
        sertifikatPenyelesaianUrl:
            sertifikatPenyelesaianUrl ?? this.sertifikatPenyelesaianUrl,
        sertifikatKelulusanUrl:
            sertifikatKelulusanUrl ?? this.sertifikatKelulusanUrl,
        sesiKonsultasi: sesiKonsultasi ?? this.sesiKonsultasi,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        // "date_created": dateCreated,
        // "status": status,
        "price": price,
        // "product_id": productId,
        "price_html": List<dynamic>.from(priceHtml.map((x) => x.toJson())),
        "total_students": totalStudents,
        // "seats": seats,
        // "start_date": startDate,
        "average_rating": averageRating,
        "rating_count": ratingCount,
        "course_duration_time": courseDurationTime,
        "featured_image": featuredImage,
        // "categories": List<dynamic>.from(categories.map((x) => x)),
        "description": description,
        "course_flag": courseFlag.toJson(),
        // "thumbnail_square": thumbnailSquare,
        "instructors": List<dynamic>.from(instructors.map((x) => x.toJson())),
        "od": od,
        "enable_face_recog": enableFaceRecog,
        "mp_links": mpLinks,
        "ikhtisar": ikhtisar,
        "peluang_pelatihan": peluangPelatihan,
        "aspek_kompetensi": aspekKompetensi,
        "yg_akan_dipelajari":
            List<dynamic>.from(ygAkanDipelajari.map((x) => x)),
        "skill_yg_akan_diperoleh":
            List<dynamic>.from(skillYgAkanDiperoleh.map((x) => x)),
        "foto_instruktur": List<dynamic>.from(fotoInstruktur.map((x) => x)),
        "nama_instruktur": List<dynamic>.from(namaInstruktur.map((x) => x)),
        "jabatan_instructure_text":
            List<dynamic>.from(jabatanInstructureText.map((x) => x)),
        "description_instruktur":
            List<dynamic>.from(descriptionInstruktur.map((x) => x)),
        // "pmo_kategori": pmoKategori,
        "tujuan_umum": tujuanUmum,
        "tujuan_khusus": tujuanKhusus,
        "sasaran_kelompok": sasaranKelompok,
        // "sasaran_kompetensi": sasaranKompetensi,
        "standar_kompetensi": standarKompetensi,
        "sertifikat_kelulusan_desc": sertifikatKelulusanDesc,
        "sertifikat_penyelesaian_url": sertifikatPenyelesaianUrl,
        "sertifikat_kelulusan_url": sertifikatKelulusanUrl,
        "sesi_konsultasi": sesiKonsultasi,
      };

  @override
  List<Object?> get props => [
        id,
        name,
        slug,
        // dateCreated,
        // status,
        price,
        // productId,
        priceHtml,
        totalStudents,
        // seats,
        // startDate,
        averageRating,
        ratingCount,
        courseDurationTime,
        featuredImage,
        // categories,
        description,
        courseFlag,
        // thumbnailSquare,
        instructors,
        od,
        enableFaceRecog,
        mpLinks,
        ikhtisar,
        peluangPelatihan,
        aspekKompetensi,
        ygAkanDipelajari,
        skillYgAkanDiperoleh,
        fotoInstruktur,
        namaInstruktur,
        jabatanInstructureText,
        descriptionInstruktur,
        // pmoKategori,
        tujuanUmum,
        tujuanKhusus,
        sasaranKelompok,
        // sasaranKompetensi,
        standarKompetensi,
        sertifikatKelulusanDesc,
        sertifikatPenyelesaianUrl,
        sertifikatKelulusanUrl,
        sesiKonsultasi,
      ];
}
