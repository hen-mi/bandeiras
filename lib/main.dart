import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(bandeiras());
}

class bandeiras extends StatefulWidget {
  const bandeiras({Key? key}) : super(key: key);

  @override
  State<bandeiras> createState() => _bandeirasState();
}

class _bandeirasState extends State<bandeiras> {
  @override
  List<String> bandeira =
  [
    'ad','ae','af','ag','ai',    'al',    'am',    'ao',    'aq',    'ar',    'at',    'au',    'aw',    'ax',    'az',
    'ba',    'bb',    'bd',    'be',    'bf',    'bg',    'bh',    'bi',    'bj',    'bl',    'bm',    'bn',    'bo',    'bq',    'br',    'bs',    'bt',    'bv',    'bw',    'by',    'bz',
    'ca',    'cc',    'cd',    'cf',    'cg',    'ch',    'ci',    'ck',    'cl',    'cm',    'cn',    'co',    'cr',    'cu',    'cv',    'cx',    'cy',    'cz',
    'de',    'dj',    'dk',    'dm',    'do',    'dz',
    'ec',    'ee',    'eg',    'er',    'es',    'et',
    'fi',    'fj',    'fk',    'fm',    'fr',
    'ga',    'gb',    'gd',    'ge',    'gg',    'gh',    'gi',    'gl',    'gm',    'gn',    'gp',    'gq',    'gr',    'gs',    'gt',    'gu',    'gw',    'gy',
    'hk',    'hm',    'hn',    'hr',    'ht',    'hu',
    'id',    'ie',    'il',    'im',    'in',    'iq',    'ir',    'is',    'it',
    'je',    'jm',    'jo',    'jp',
    'ke',    'kg',    'kh',    'ki',    'km',    'kn',    'kp',    'kr',    'kw',    'ky',    'kz',
    'la',    'lb',    'lc',    'li',    'lk',    'lr',    'ls',    'lt',    'lu',    'lv',    'ly',
    'ma',    'mc',    'md',    'me',    'mf',    'mg',    'mh',    'mk',    'ml',    'mm',    'mn',    'mo',    'mp',    'mq',    'mr',    'ms',    'mt',    'mu',    'mv',    'mw',    'mx',    'my',    'mz',
    'na',    'nc',    'ne',    'nf',    'ng',    'ni',    'nl',    'no',    'np',    'nr',    'nz',    'om',
    'pa',    'pe',    'pg',    'ph',    'pk',    'pl',    'pt',    'pw',    'py',
    'qa',
    'ro',    'rs',    'ru',    'rw',    'sa',    'sb',    'sc',    'sd',    'se',    'sg',    'si',    'sk',    'sl',    'sm',    'sn',    'so',    'sr',    'ss',    'st',    'sv',    'sy',    'sz',
    'td',    'tg',    'th',
    'tj',    'tl',    'tm',    'tn',    'to',    'tr',    'tt',    'tv',    'tz',
    'ua',    'ug',    'us',    'uy',    'uz',    'vc',
    've',    'vn',    'vu',
    'ws',
    'ye',
    'za',    'zm',    'zw'
  ];

  Map<String, String> nomePaises = {
    'ad': 'Andorra',
    'ae': 'Emirados ??rabes Unidos',
    'af': 'Afeganist??o',
    'ag': 'Ant??gua e Barbuda',
    'ai': 'Anguilla',
    'al': 'Alb??nia',
    'am': 'Arm??nia',
    'ao': 'Angola',
    'aq': '	Antartica',
    'ar': 'Argentina',
    'at': '??ustria',
    'au': 'Austr??lia',
    'aw': 'Aruba',
    'ax': 'Ilhas Aland',
    'az': 'Azerbaij??o',
    'ba': 'B??snia e Herzegovina',
    'bb': 'Barbados',
    'bd': 'Bangladesh',
    'be': 'B??lgica',
    'bf': 'Burkina Faso',
    'bg': 'Bulg??ria',
    'bh': 'Barein',
    'bi': 'Burundi',
    'bj': 'Benin',
    'bl': 'Bol??via',
    'bm': 'Bermudas',
    'bn': 'Brunei',
    'bo': 'Bol??via (Estado Plurinacional da)',
    'bq': 'Caribe Holand??s',
    'br': 'Brasil',
    'bs': 'Bahamas',
    'bt': 'But??o',
    'bv': 'Ilha Bouvet',
    'bw': 'Botsuana',
    'by': 'Belarus',
    'bz': 'Belize',
    'ca': 'Canad??',
    'cc': 'Ilhas Cocos',
    'cd': 'Rep??blica Democr??tica do Congo',
    'cf': 'Rep??blica Centro-Africana',
    'cg': 'Congo',
    'ch': 'Su????a',
    'ci': 'Costa do Marfim',
    'ck': 'Ilhas Cook',
    'cl': 'Chile',
    'cm': 'Camar??es',
    'cn': 'China',
    'co': 'Col??mbia',
    'cr': 'Costa Rica',
    'cu': 'Cuba',
    'cv': 'Cabo Verde',
    'cx': 'Ilha Natal',
    'cy': 'Chipre',
    'cz': 'Rep??blica Tcheca',
    'de': 'Alemanha',
    'dj': 'Djibouti',
    'dk': 'Dinamarca',
    'dm': 'Dominica',
    'do': 'Rep??blica Dominicana',
    'dz': 'Arg??lia',
    'ec': 'Equador',
    'ee': 'Est??nia',
    'eg': 'Egito',
    'er': 'Eritreia',
    'es': 'Espanha',
    'et': 'Eti??pia',
    'fi': 'Finl??ndia',
    'fj': 'Fiji',
    'fk': 'Ilhas Malvinas',
    'fm': 'Micron??sia',
    'fr': 'Fran??a',
    'ga': 'Gab??o',
    'gb': 'Reino Unido da Gr??-Bretanha e Irlanda do Norte',
    'gd': 'Granada',
    'ge': 'Ge??rgia',
    'gg': 'Ilhas do Canal',
    'gh': 'Gana',
    'gi': 'Gibraltar',
    'gl': 'Groel??ndia',
    'gm': 'G??mbia',
    'gn': 'Guin??',
    'gp': 'Guadalupe',
    'gq': 'Guin?? Equatorial',
    'gr': 'Gr??cia',
    'gs': 'Ge??rgia do Sul',
    'gt': 'Guatemala',
    'gu': 'Guam',
    'gw': 'Guin??-Bissau',
    'gy': 'Guiana',
    'hk': 'Hong-Kong',
    'hm': 'Ilhas Heard e McDonald',
    'hn': 'Honduras',
    'hr': 'Cro??cia',
    'ht': 'Haiti',
    'hu': 'Hungria',
    'id': 'Indon??sia',
    'ie': 'Irlanda',
    'il': 'Israel',
    'im': 'Ilha do Homem',
    'in': '??ndia',
    'iq': 'Iraque',
    'ir': 'Ir?? (Rep??blica Isl??mica do)',
    'is': 'Isl??ndia',
    'it': 'It??lia',
    'je': 'Jersey',
    'jm': 'Jamaica',
    'jo': 'Jord??nia',
    'jp': 'Jap??o',
    'ke': 'Qu??nia',
    'kg': 'Quirguist??o',
    'kh': 'Camboja',
    'ki': 'Kiribati',
    'km': 'Comores',
    'kn': 'S??o Crist??v??o e Nevis',
    'kp': 'Rep??blica Popular Democr??tica da Coreia',
    'kr': 'Rep??blica da Coreia',
    'kw': 'Kuwait',
    'ky': 'Ilhas Cayman',
    'kz': 'Cazaquist??o',
    'la': 'Laos',
    'lb': 'L??bano',
    'lc': 'Santa L??cia',
    'li': 'Liechtenstein',
    'lk': 'Sri Lanka',
    'lr': 'Lib??ria',
    'ls': 'Lesoto',
    'lt': 'Litu??nia',
    'lu': 'Luxemburgo',
    'lv': 'Let??nia',
    'ly': 'L??bia',
    'ma': 'Marrocos',
    'mc': 'M??naco',
    'md': 'Mold??via (Rep??blica da)',
    'me': 'Montenegro',
    'mf': 'S??o Martinho',
    'mg': 'Madagascar',
    'mh': 'Ilhas Marshall',
    'mk': 'Maced??nia do Norte',
    'ml': 'Mali',
    'mm': 'Mianmar',
    'mn': 'Mong??lia',
    'mo': 'Macau',
    'mp': 'Ilhas Marianas do Norte',
    'mq': 'Martinica',
    'mr': 'Maurit??nia',
    'ms': 'Montserrat',
    'mt': 'Malta',
    'mu': 'Maur??cio',
    'mv': 'Maldivas',
    'mw': 'Malau??',
    'mx': 'M??xico',
    'my': 'Mal??sia',
    'mz': 'Mo??ambique',
    'na': 'Nam??bia',
    'nc': 'Nova Caled??nia',
    'ne': 'Niger',
    'nf': 'Ilhas Norfolk',
    'ng': 'Nig??ria',
    'ni': 'Nicar??gua',
    'nl': 'Holanda',
    'no': 'Noruega',
    'np': 'Nepal',
    'nr': 'Nauru',
    'nz': 'Nova Zel??ndia',
    'om': 'Om??',
    'pa': 'Panam??',
    'pe': 'Peru',
    'pg': 'Papua Nova Guin??',
    'ph': 'Filipinas',
    'pk': 'Paquist??o',
    'pl': 'Pol??nia',
    'pt': 'Portugal',
    'pw': 'Palau',
    'py': 'Paraguai',
    'qa': 'Catar',
    'ro': 'Rom??nia',
    'rs': 'S??rvia',
    'ru': 'Federa????o da R??ssia',
    'rw': 'Ruanda',
    'sa': 'Ar??bia Saudita',
    'sb': 'Ilhas Salom??o',
    'sc': 'Seichelles',
    'sd': 'Sud??o',
    'se': 'Su??cia',
    'sg': 'Singapura',
    'si': 'Eslov??nia',
    'sk': 'Eslov??quia',
    'sl': 'Serra Leoa',
    'sm': 'San Marino',
    'sn': 'Senegal',
    'so': 'Som??lia',
    'sr': 'Suriname',
    'ss': 'Sud??o do Sul',
    'st': 'S??o Tom?? e Pr??ncipe',
    'sv': 'El Salvador',
    'sy': 'S??ria',
    'sz': 'Eswatini',
    'td': 'Chade',
    'tg': 'Togo',
    'th': 'Tail??ndia',
    'tj': 'Tadjiquist??o',
    'tl': 'Timor-Leste',
    'tm': 'Turcomenist??o',
    'tn': 'Tun??sia',
    'to': 'Tonga',
    'tr': 'Turquia',
    'tt': 'Trinidad e Tobago',
    'tv': 'Tuvalu',
    'tz': 'Tanz??nia, Rep??blica Unida da Tanz??nia',
    'ua': 'Ucr??nia',
    'ug': 'Uganda',
    'us': 'Estados Unidos da Am??rica',
    'uy': 'Uruguai',
    'uz': 'Uzbequist??o',
    'vc': 'S??o Vicente e Granadinas',
    've': 'Venezuela (Rep??blica Bolivariana da)',
    'vn': 'Vietn??',
    'vu': 'Vanuatu',
    'ws': 'Samoa',
    'ye': 'I??men',
    'za': '??frica do Sul',
    'zm': 'Z??mbia',
    'zw': 'Zimb??bue'
  };
  String b_atual = 'br';

  Widget build(BuildContext context) {
    String? nome = nomePaises['$b_atual'];
    return MaterialApp(
        home: Scaffold(

          backgroundColor: Colors.black87,
          body: SafeArea(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Tooltip(
                message: "$b_atual",
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child:Image.asset('images/$b_atual.png',

                  width: 400,
                  height: 250,
                  colorBlendMode: BlendMode.darken,
                  fit: BoxFit.fitWidth,
                 ),
                ),
              ),
              Container(

                padding: EdgeInsets.all(12),
                child: Text(
                  "$nome",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 70.0),
                child: SizedBox(
                  width: 150,
                  height: 45,

                  child: ElevatedButton(
                      style: ButtonStyle(

                        shape: MaterialStateProperty.all<
                            RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.purple)
                            )
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.deepPurpleAccent),
                        foregroundColor: MaterialStateProperty.all<Color>(
                            Colors.white),
                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered))
                              return Colors.black.withOpacity(0.04);
                            if (states.contains(MaterialState.focused) ||
                                states.contains(MaterialState.pressed))
                              return Colors.black.withOpacity(0.20);
                            return null; // Defer to the widget's default.
                          },
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          b_atual = bandeira.elementAt(Random().nextInt(222));
                          print(b_atual);
                        });
                      },
                      child: Text(
                        'Alterar o pa??s',
                        style: TextStyle(
                          fontSize: 16,

                        ),
                      )
                  ),
                ),
              ),
            ],

          ),

          ),
        )
    );
  }
}
