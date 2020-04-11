import 'package:json_annotation/json_annotation.dart';

import 'package:covid19cuba/src/models/models.dart';
import 'package:covid19cuba/src/utils/functions.dart';

part 'data_model.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class DataModel {
  @JsonKey(name: 'resume')
  List<Item> resume;

  @JsonKey(name: 'cases_by_sex')
  CasesBySex casesBySex;

  @JsonKey(name: 'cases_by_mode_of_contagion')
  CasesByModeOfContagion casesByModeOfContagion;

  @JsonKey(name: 'evolution_of_cases_by_days')
  EvolutionOfCasesByDays evolutionOfCasesByDays;

  @JsonKey(name: 'evolution_of_deaths_by_days')
  EvolutionOfDeathsByDays evolutionOfDeathsByDays;

  @JsonKey(name: 'evolution_of_recovered_by_days')
  EvolutionOfRecoveredByDays evolutionOfRecoveredByDays;

  @JsonKey(name: 'distribution_by_age_ranges')
  List<ItemCode> distributionByAgeRanges;

  @JsonKey(name: 'cases_by_nationality')
  CasesByNationality casesByNationality;

  @JsonKey(name: 'distribution_by_nationality_of_foreign_cases')
  List<ItemCode> distributionByNationalityOfForeignCases;

  @JsonKey(name: 'list_of_tests_performed')
  ListOfTestsPerformed listOfTestsPerformed;

  @JsonKey(name: 'tests_by_days')
  TestsByDays testsByDays;

  @JsonKey(name: 'affected_provinces')
  List<ItemProvince> affectedProvinces;

  @JsonKey(name: 'affected_municipalities')
  List<ItemMunicipality> affectedMunicipalities;

  @JsonKey(name: 'comparison_of_accumulated_cases')
  ComparisonOfAccumulatedCases comparisonOfAccumulatedCases;

  @JsonKey(name: 'map_data')
  Map<String, dynamic> mapData;

  @JsonKey(name: 'curves_evolution')
  Map<String, dynamic> curvesEvolution;

  @JsonKey(name: 'updated', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime updated;

  @JsonKey(name: 'note')
  String note;

  @JsonKey(name: 'top_20_accumulated_countries')
  List<Item> top20AccumulatedCountries;

  DataModel();

  static String prettyCountry(String country) {
    var dict = <String, String>{
      'Vietnam': 'Vietnam',
      'Austria': 'Austria',
      'Cambodia': 'Camboya',
      'Kazakhstan': 'Kazajstán',
      "Cote d'Ivoire": 'Costa de Marfil',
      'Spain': 'España',
      'Serbia': 'Serbia',
      'Ethiopia': 'Etiopía',
      'Brazil': 'Brasil',
      'Pakistan': 'Pakistán',
      'Panama': 'Panamá',
      'Syria': 'Siria',
      'France': 'Francia',
      'Germany': 'Alemania',
      'Montenegro': 'Montenegro',
      'Switzerland': 'Suiza',
      'Paraguay': 'Paraguay',
      'Holy See': 'Santa Sede',
      'Nepal': 'Nepal',
      'Norway': 'Noruega',
      'Afghanistan': 'Afganistán',
      'Djibouti': 'Yitubi',
      'Ireland': 'Irlanda',
      'United Arab Emirates': 'Emiratos Árabes Unidos',
      'Israel': 'Israel',
      'Bulgaria': 'Bulgaria',
      'Korea, South': 'Corea del Sur',
      'Cyprus': 'Chipre',
      'Peru': 'Perú',
      'Azerbaijan': 'Azerbaiyán',
      'Philippines': 'Filipinas',
      'Bahamas': 'Bahamas',
      'India': 'India',
      'MS Zaandam': 'MS Zaandam',
      'Canada': 'Canadá',
      'Rwanda': 'Ruanda',
      'Cuba': 'Cuba',
      'Thailand': 'Tailandia',
      'Brunei': 'Brunéi',
      'El Salvador': 'El Salvador',
      'North Macedonia': 'Macedonia del Norte',
      'Saint Vincent and the Grenadines': 'San Vicente y las Granadinas',
      'Jamaica': 'Jamaica',
      'Greece': 'Grecia',
      'Bolivia': 'Bolivia',
      'Dominica': 'Dominica',
      'Togo': 'Togo',
      'Mauritius': 'Mauricio',
      'Russia': 'Rusia',
      'Lebanon': 'Líbano',
      'Zimbabwe': 'Zimbabue',
      'Nigeria': 'Nigeria',
      'Finland': 'Finlandia',
      'Burma': 'Birmania',
      'Iraq': 'Irak',
      'United Kingdom': 'Reino Unido',
      'Tanzania': 'Tanzania',
      'Uruguay': 'Uruguay',
      'South Africa': 'Sudáfrica',
      'Somalia': 'Somalia',
      'Algeria': 'Argelia',
      'Benin': 'Benín',
      'Niger': 'Níger',
      'West Bank and Gaza': 'Cisjordania',
      'Uganda': 'Uganda',
      'San Marino': 'San Marino',
      'Liberia': 'Liberia',
      'Iran': 'Irán',
      'Mexico': 'México',
      'Honduras': 'Honduras',
      'Burkina Faso': 'Burkina Faso',
      'Australia': 'Australia',
      'Chile': 'Chile',
      'Haiti': 'Haití',
      'Turkey': 'Turquía',
      'Madagascar': 'Madagascar',
      'Saint Lucia': 'Santa Lucía',
      'Papua New Guinea': 'Papúa Nueva Guinea',
      'Central African Republic': 'República Centroafricana',
      'Eritrea': 'Eritrea',
      'Lithuania': 'Lituania',
      'Kyrgyzstan': 'Kirguistán',
      'Andorra': 'Andorra',
      'Laos': 'Laos',
      'Mali': 'Mali',
      'Guinea': 'Guinea',
      'Luxembourg': 'Luxemburgo',
      'Gambia': 'Gambia',
      'Mongolia': 'Mongolia',
      'Costa Rica': 'Costa Rica',
      'Trinidad and Tobago': 'Trinidad y Tobago',
      'Mauritania': 'Mauritania',
      'Antigua and Barbuda': 'Antigua y Barbuda',
      'Libya': 'Libia',
      'Zambia': 'Zambia',
      'Timor-Leste': 'Timor-Leste',
      'Guyana': 'Guayana',
      'Tunisia': 'Túnez',
      'Japan': 'Japón',
      'Liechtenstein': 'Liechtenstein',
      'Saint Kitts and Nevis': 'San Cristóbal y Nieves',
      'Senegal': 'Senegal',
      'Hungary': 'Hungría',
      'Moldova': 'Moldavia',
      'Qatar': 'Katar',
      'US': 'Estados Unidos',
      'Belarus': 'Bielorrusia',
      'Chad': 'Chad',
      'Malaysia': 'Malasia',
      'Romania': 'Rumania',
      'Argentina': 'Argentina',
      'Belize': 'Belice',
      'Angola': 'Angola',
      'Sweden': 'Suecia',
      'China': 'China',
      'Jordan': 'Jordán',
      'Italy': 'Italia',
      'Latvia': 'Letonia',
      'Seychelles': 'Seychelles',
      'Ghana': 'Ghana',
      'Colombia': 'Colombia',
      'Albania': 'Albania',
      'Saudi Arabia': 'Arabia Saudita',
      'Estonia': 'Estonia',
      'Monaco': 'Mónaco',
      'Ukraine': 'Ucrania',
      'Uzbekistan': 'Uzbekistán',
      'Maldives': 'Maldivas',
      'Morocco': 'Marruecos',
      'Portugal': 'Portugal',
      'Kenya': 'Kenia',
      'Guatemala': 'Guatemala',
      'Gabon': 'Gabón',
      'Belgium': 'Bélgica',
      'Iceland': 'Islandia',
      'Cabo Verde': 'Cabo Verde',
      'Mozambique': 'Mozambique',
      'Indonesia': 'Indonesia',
      'Egypt': 'Egipto',
      'Taiwan*': 'Taiwán *',
      'Netherlands': 'Países Bajos',
      'Slovakia': 'Eslovaquia',
      'Bosnia and Herzegovina': 'Bosnia y Herzegovina',
      'Cameroon': 'Camerún',
      'Venezuela': 'Venezuela',
      'Kuwait': 'Kuwait',
      'Malta': 'Malta',
      'Nicaragua': 'Nicaragua',
      'Congo (Kinshasa)': 'Congo (Kinshasa)',
      'Singapore': 'Singapur',
      'Bhutan': 'Bután',
      'Bangladesh': 'Bangladesh',
      'Ecuador': 'Ecuador',
      'Georgia': 'Georgia',
      'Namibia': 'Namibia',
      'Denmark': 'Dinamarca',
      'Poland': 'Polonia',
      'Suriname': 'Surinam',
      'Slovenia': 'Eslovenia',
      'Congo (Brazzaville)': 'Congo (Brazzaville)',
      'Guinea-Bissau': 'Guinea-Bissau',
      'Dominican Republic': 'República Dominicana',
      'Diamond Princess': 'Princesa del Diamante',
      'Grenada': 'Granada',
      'Barbados': 'Barbados',
      'New Zealand': 'Nueva Zelanda',
      'Eswatini': 'Eswatini',
      'Czechia': 'Chequia',
      'Kosovo': 'Kosovo',
      'Sudan': 'Sudán',
      'Armenia': 'Armenia',
      'Bahrain': 'Bahrein',
      'Sri Lanka': 'Sri Lanka',
      'Equatorial Guinea': 'Guinea Ecuatorial',
      'Croatia': 'Croacia',
      'Oman': 'Omán',
      'Fiji': 'Fiyi',
    };
    return dict.containsKey(country) ? dict[country] : country;
  }

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);

  Map<String, dynamic> toJson() => _$DataModelToJson(this);
}
