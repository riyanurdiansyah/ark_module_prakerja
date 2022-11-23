import 'dart:convert';
import 'package:ark_module_prakerja/src/data/dto/course_flag_dto.dart';
import 'package:ark_module_prakerja/src/data/dto/instructor_dto.dart';
import 'package:ark_module_prakerja/src/data/dto/mp_links_dto.dart';
import 'package:ark_module_prakerja/src/data/dto/price_html_dto.dart';
import 'package:ark_module_prakerja/src/domain/entities/course_entity.dart';

ResponseCourseDTO responseCourseFromJson(String str) =>
    ResponseCourseDTO.fromJson(json.decode(str));

class ResponseCourseDTO extends ResponseCourseEntity {
  const ResponseCourseDTO({required super.success, required super.data});

  factory ResponseCourseDTO.fromJson(Map<String, dynamic> json) =>
      ResponseCourseDTO(
        success: json["success"],
        data: List<ResponseDataCourseDTO>.from(
            json["data"].map((x) => ResponseDataCourseDTO.fromJson(x))),
      );
}

class ResponseDataCourseDTO extends ResponseDataCourseEntity {
  const ResponseDataCourseDTO({required super.course});

  factory ResponseDataCourseDTO.fromJson(Map<String, dynamic> json) =>
      ResponseDataCourseDTO(
        course: CourseDTO.fromJson(json["course"]),
      );
}

class CourseDTO extends CourseEntity {
  const CourseDTO({
    required super.id,
    required super.name,
    required super.slug,
    // required super.dateCreated,
    // required super.status,
    required super.price,
    // required super.productId,
    required super.priceHtml,
    required super.totalStudents,
    // required super.seats,
    // required super.startDate,
    required super.averageRating,
    required super.ratingCount,
    required super.courseDurationTime,
    required super.featuredImage,
    // required super.categories,
    required super.description,
    required super.courseFlag,
    // required super.thumbnailSquare,
    required super.instructors,
    required super.od,
    required super.enableFaceRecog,
    required super.mpLinks,
    required super.ikhtisar,
    required super.peluangPelatihan,
    required super.aspekKompetensi,
    required super.ygAkanDipelajari,
    required super.skillYgAkanDiperoleh,
    required super.fotoInstruktur,
    required super.namaInstruktur,
    required super.jabatanInstructureText,
    required super.descriptionInstruktur,
    // required super.pmoKategori,
    required super.tujuanUmum,
    required super.tujuanKhusus,
    required super.sasaranKelompok,
    // required super.sasaranKompetensi,
    required super.standarKompetensi,
    required super.sertifikatKelulusanDesc,
    required super.sertifikatPenyelesaianUrl,
    required super.sertifikatKelulusanUrl,
    required super.sesiKonsultasi,
  });

  factory CourseDTO.fromJson(Map<String, dynamic> json) => CourseDTO(
        id: json["id"],
        name: json["name"],
        slug: json["slug"] ?? "",
        // dateCreated: json["date_created"],
        // status: json["status"],
        price: json["price"] == null ||
                json["price"] == false ||
                json["price"] == 0
            ? "0"
            : json['price'],
        // productId: json["product_id"],
        priceHtml: json["price_html"] == null
            ? []
            : List<PriceHtmlDTO>.from(
                json["price_html"].map((x) => PriceHtmlDTO.fromJson(x))),
        totalStudents: json["total_students"],
        // seats: json["seats"],
        // startDate: json["start_date"],
        averageRating:
            json["average_rating"] == 0 ? '0' : json["average_rating"],
        ratingCount: json["rating_count"] == 0 || json["rating_count"] == null
            ? "0"
            : json["rating_count"],
        courseDurationTime: json["course_duration_time"] ?? "",
        featuredImage: json["featured_image"] ?? "",
        // categories: List<dynamic>.from(json["categories"].map((x) => x)),
        description: json["description"],
        courseFlag: CourseFlagDTO.fromJson(json["course_flag"]),
        // thumbnailSquare: json["thumbnail_square"],
        instructors: json["instructors"] == null
            ? []
            : List<InstructorDTO>.from(
                json["instructors"].map((x) => InstructorDTO.fromJson(x))),
        od: json["od"],
        enableFaceRecog: json["enable_face_recog"],
        mpLinks: json["mp_links"] == null
            ? []
            : List<MpLinkDTO>.from(
                json["mp_links"].map((x) => MpLinkDTO.fromJson(x))),
        ikhtisar: json["ikhtisar"] ?? "",
        peluangPelatihan: json["peluang_pelatihan"] ?? "",
        aspekKompetensi: json["aspek_kompetensi"] ?? "",
        ygAkanDipelajari: json['yg_akan_dipelajari'] == false ||
                json['yg_akan_dipelajari'] == null
            ? []
            : List<String>.from(json["yg_akan_dipelajari"].map((x) => x)),
        skillYgAkanDiperoleh: json['skill_yg_akan_diperoleh'] == false ||
                json['skill_yg_akan_diperoleh'] == null
            ? []
            : List<String>.from(json["skill_yg_akan_diperoleh"].map((x) => x)),
        fotoInstruktur:
            json['foto_instruktur'] == false || json['foto_instruktur'] == null
                ? []
                : List<String>.from(json["foto_instruktur"].map((x) => x)),
        namaInstruktur:
            json['nama_instruktur'] == false || json['nama_instruktur'] == null
                ? []
                : List<String>.from(json["nama_instruktur"].map((x) => x)),
        jabatanInstructureText: json['jabatan_instructure_text'] == false ||
                json['jabatan_instructure_text'] == null
            ? []
            : List<String>.from(json["jabatan_instructure_text"].map((x) => x)),
        descriptionInstruktur: json['description_instruktur'] == false ||
                json['description_instruktur'] == null
            ? []
            : List<String>.from(json["description_instruktur"].map((x) => x)),
        // pmoKategori: json["pmo_kategori"],
        tujuanUmum: json["tujuan_umum"] ?? "",
        tujuanKhusus: json["tujuan_khusus"] ?? "",
        sasaranKelompok: json["sasaran_kelompok"] ?? "",
        // sasaranKompetensi: json["sasaran_kompetensi"],
        standarKompetensi: json["standar_kompetensi"],
        sertifikatKelulusanDesc: json["sertifikat_kelulusan_desc"] ?? "",
        sertifikatPenyelesaianUrl: json["sertifikat_penyelesaian_url"] ?? "",
        sertifikatKelulusanUrl: json["sertifikat_kelulusan_url"] ?? "",
        sesiKonsultasi: json["sesi_konsultasi"] ?? "",
      );
}
