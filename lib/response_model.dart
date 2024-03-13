//response_model.dart created by honey manimbo

class ResponseModel {
  String? word;
  String? phonetic;
  List<Phonetics>? phonetics;
  List<Meanings>? meanings;
  License? license;
  List<String>? sourceUrls;

  ResponseModel({
    this.word,
    this.phonetic,
    this.phonetics,
    this.meanings,
    this.license,
    this.sourceUrls,
  });

  factory ResponseModel.fromJson(Map<String, dynamic> json) {
    return ResponseModel(
      word: json['word'],
      phonetic: json['phonetic'],
      phonetics: (json['phonetics'] as List<dynamic>?)
          ?.map((v) => Phonetics.fromJson(v))
          .toList(),
      meanings: (json['meanings'] as List<dynamic>?)
          ?.map((v) => Meanings.fromJson(v))
          .toList(),
      license: json['license'] != null ? License.fromJson(json['license']) : null,
      sourceUrls: (json['sourceUrls'] as List<dynamic>?)?.cast<String>(),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'word': word,
      'phonetic': phonetic,
      'phonetics': phonetics?.map((v) => v.toJson()).toList(),
      'meanings': meanings?.map((v) => v.toJson()).toList(),
      'license': license?.toJson(),
      'sourceUrls': sourceUrls,
    };
    return data;
  }
}

class Phonetics {
  String? text;
  String? audio;
  String? sourceUrl;
  License? license;

  Phonetics({this.text, this.audio, this.sourceUrl, this.license});

  factory Phonetics.fromJson(Map<String, dynamic> json) {
    return Phonetics(
      text: json['text'],
      audio: json['audio'],
      sourceUrl: json['sourceUrl'],
      license: json['license'] != null ? License.fromJson(json['license']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'text': text,
      'audio': audio,
      'sourceUrl': sourceUrl,
      'license': license?.toJson(),
    };
    return data;
  }
}

class License {
  String? name;
  String? url;

  License({this.name, this.url});

  factory License.fromJson(Map<String, dynamic> json) {
    return License(
      name: json['name'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'name': name,
      'url': url,
    };
    return data;
  }
}

class Meanings {
  String? partOfSpeech;
  List<Definitions>? definitions;
  List<String>? synonyms;
  List<String>? antonyms;

  Meanings({this.partOfSpeech, this.definitions, this.synonyms, this.antonyms});

  factory Meanings.fromJson(Map<String, dynamic> json) {
    return Meanings(
      partOfSpeech: json['partOfSpeech'],
      definitions: (json['definitions'] as List<dynamic>?)
          ?.map((v) => Definitions.fromJson(v))
          .toList(),
      synonyms: (json['synonyms'] as List<dynamic>?)?.cast<String>(),
      antonyms: (json['antonyms'] as List<dynamic>?)?.cast<String>(),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'partOfSpeech': partOfSpeech,
      'definitions': definitions?.map((v) => v.toJson()).toList(),
      'synonyms': synonyms,
      'antonyms': antonyms,
    };
    return data;
  }
}

class Definitions {
  String? definition;
  List<String>? synonyms;
  List<String>? antonyms;
  String? example;

  Definitions({this.definition, this.synonyms, this.antonyms, this.example});

  factory Definitions.fromJson(Map<String, dynamic> json) {
    return Definitions(
      definition: json['definition'],
      synonyms: (json['synonyms'] as List<dynamic>?)?.cast<String>(),
      antonyms: (json['antonyms'] as List<dynamic>?)?.cast<String>(),
      example: json['example'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'definition': definition,
      'synonyms': synonyms,
      'antonyms': antonyms,
      'example': example,
    };
    return data;
  }
}
