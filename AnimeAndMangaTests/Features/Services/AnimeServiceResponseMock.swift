import XCTest

final class AnimeServiceResponseMock {
    
    static let fetchAnimeListSuccessResponse: String = """
    {
       "data":[
          {
             "node":{
                "id":16498,
                "title":"Shingeki no Kyojin",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/10/47347.jpg",
                   "large":"https://cdn.myanimelist.net/images/anime/10/47347l.jpg"
                },
                "mean":8.55
             },
             "ranking":{
                "rank":1
             }
          },
          {
             "node":{
                "id":1535,
                "title":"Death Note",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/1079/138100.jpg",
                   "large":"https://cdn.myanimelist.net/images/anime/1079/138100l.jpg"
                },
                "mean":8.62
             },
             "ranking":{
                "rank":2
             }
          },
          {
             "node":{
                "id":5114,
                "title":"Fullmetal Alchemist: Brotherhood",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/1208/94745.webp",
                   "large":"https://cdn.myanimelist.net/images/anime/1208/94745l.webp"
                },
                "mean":9.1
             },
             "ranking":{
                "rank":3
             }
          },
          {
             "node":{
                "id":30276,
                "title":"One Punch Man",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/12/76049.jpg",
                   "large":"https://cdn.myanimelist.net/images/anime/12/76049l.jpg"
                },
                "mean":8.49
             },
             "ranking":{
                "rank":4
             }
          },
          {
             "node":{
                "id":38000,
                "title":"Kimetsu no Yaiba",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/1286/99889.jpg",
                   "large":"https://cdn.myanimelist.net/images/anime/1286/99889l.jpg"
                },
                "mean":8.44
             },
             "ranking":{
                "rank":5
             }
          },
          {
             "node":{
                "id":11757,
                "title":"Sword Art Online",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/11/39717.webp",
                   "large":"https://cdn.myanimelist.net/images/anime/11/39717l.webp"
                },
                "mean":7.21
             },
             "ranking":{
                "rank":6
             }
          },
          {
             "node":{
                "id":31964,
                "title":"Boku no Hero Academia",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/10/78745.jpg",
                   "large":"https://cdn.myanimelist.net/images/anime/10/78745l.jpg"
                },
                "mean":7.84
             },
             "ranking":{
                "rank":7
             }
          },
          {
             "node":{
                "id":11061,
                "title":"Hunter x Hunter (2011)",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/1337/99013.webp",
                   "large":"https://cdn.myanimelist.net/images/anime/1337/99013l.webp"
                },
                "mean":9.03
             },
             "ranking":{
                "rank":8
             }
          },
          {
             "node":{
                "id":20,
                "title":"Naruto",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/1141/142503.webp",
                   "large":"https://cdn.myanimelist.net/images/anime/1141/142503l.webp"
                },
                "mean":8
             },
             "ranking":{
                "rank":9
             }
          },
          {
             "node":{
                "id":22319,
                "title":"Tokyo Ghoul",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/1498/134443.jpg",
                   "large":"https://cdn.myanimelist.net/images/anime/1498/134443l.jpg"
                },
                "mean":7.79
             },
             "ranking":{
                "rank":10
             }
          },
          {
             "node":{
                "id":32281,
                "title":"Kimi no Na wa.",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/5/87048.jpg",
                   "large":"https://cdn.myanimelist.net/images/anime/5/87048l.jpg"
                },
                "mean":8.83
             },
             "ranking":{
                "rank":11
             }
          },
          {
             "node":{
                "id":25777,
                "title":"Shingeki no Kyojin Season 2",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/4/84177.webp",
                   "large":"https://cdn.myanimelist.net/images/anime/4/84177l.webp"
                },
                "mean":8.52
             },
             "ranking":{
                "rank":12
             }
          },
          {
             "node":{
                "id":40748,
                "title":"Jujutsu Kaisen",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/1171/109222.jpg",
                   "large":"https://cdn.myanimelist.net/images/anime/1171/109222l.jpg"
                },
                "mean":8.56
             },
             "ranking":{
                "rank":13
             }
          },
          {
             "node":{
                "id":9253,
                "title":"Steins;Gate",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/1935/127974.webp",
                   "large":"https://cdn.myanimelist.net/images/anime/1935/127974l.webp"
                },
                "mean":9.07
             },
             "ranking":{
                "rank":14
             }
          },
          {
             "node":{
                "id":33486,
                "title":"Boku no Hero Academia 2nd Season",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/12/85221.webp",
                   "large":"https://cdn.myanimelist.net/images/anime/12/85221l.webp"
                },
                "mean":8.06
             },
             "ranking":{
                "rank":15
             }
          },
          {
             "node":{
                "id":1735,
                "title":"Naruto: Shippuuden",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/1565/111305.webp",
                   "large":"https://cdn.myanimelist.net/images/anime/1565/111305l.webp"
                },
                "mean":8.28
             },
             "ranking":{
                "rank":16
             }
          },
          {
             "node":{
                "id":21,
                "title":"One Piece",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/1244/138851.webp",
                   "large":"https://cdn.myanimelist.net/images/anime/1244/138851l.webp"
                },
                "mean":8.73
             },
             "ranking":{
                "rank":17
             }
          },
          {
             "node":{
                "id":35760,
                "title":"Shingeki no Kyojin Season 3",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/1173/92110.webp",
                   "large":"https://cdn.myanimelist.net/images/anime/1173/92110l.webp"
                },
                "mean":8.63
             },
             "ranking":{
                "rank":18
             }
          },
          {
             "node":{
                "id":19815,
                "title":"No Game No Life",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/1074/111944.jpg",
                   "large":"https://cdn.myanimelist.net/images/anime/1074/111944l.jpg"
                },
                "mean":8.05
             },
             "ranking":{
                "rank":19
             }
          },
          {
             "node":{
                "id":28851,
                "title":"Koe no Katachi",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/1122/96435.jpg",
                   "large":"https://cdn.myanimelist.net/images/anime/1122/96435l.jpg"
                },
                "mean":8.93
             },
             "ranking":{
                "rank":20
             }
          },
          {
             "node":{
                "id":38524,
                "title":"Shingeki no Kyojin Season 3 Part 2",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/1517/100633.webp",
                   "large":"https://cdn.myanimelist.net/images/anime/1517/100633l.webp"
                },
                "mean":9.05
             },
             "ranking":{
                "rank":21
             }
          },
          {
             "node":{
                "id":1575,
                "title":"Code Geass: Hangyaku no Lelouch",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/1032/135088.webp",
                   "large":"https://cdn.myanimelist.net/images/anime/1032/135088l.webp"
                },
                "mean":8.7
             },
             "ranking":{
                "rank":22
             }
          },
          {
             "node":{
                "id":31240,
                "title":"Re:Zero kara Hajimeru Isekai Seikatsu",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/1522/128039.webp",
                   "large":"https://cdn.myanimelist.net/images/anime/1522/128039l.webp"
                },
                "mean":8.24
             },
             "ranking":{
                "rank":23
             }
          },
          {
             "node":{
                "id":23273,
                "title":"Shigatsu wa Kimi no Uso",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/1405/143284.webp",
                   "large":"https://cdn.myanimelist.net/images/anime/1405/143284l.webp"
                },
                "mean":8.64
             },
             "ranking":{
                "rank":24
             }
          },
          {
             "node":{
                "id":4224,
                "title":"Toradora!",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/13/22128.webp",
                   "large":"https://cdn.myanimelist.net/images/anime/13/22128l.webp"
                },
                "mean":8.05
             },
             "ranking":{
                "rank":25
             }
          },
          {
             "node":{
                "id":36456,
                "title":"Boku no Hero Academia 3rd Season",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/1319/92084.jpg",
                   "large":"https://cdn.myanimelist.net/images/anime/1319/92084l.jpg"
                },
                "mean":7.99
             },
             "ranking":{
                "rank":26
             }
          },
          {
             "node":{
                "id":20507,
                "title":"Noragami",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/1886/128266.webp",
                   "large":"https://cdn.myanimelist.net/images/anime/1886/128266l.webp"
                },
                "mean":7.94
             },
             "ranking":{
                "rank":27
             }
          },
          {
             "node":{
                "id":32182,
                "title":"Mob Psycho 100",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/8/80356.jpg",
                   "large":"https://cdn.myanimelist.net/images/anime/8/80356l.jpg"
                },
                "mean":8.49
             },
             "ranking":{
                "rank":28
             }
          },
          {
             "node":{
                "id":31043,
                "title":"Boku dake ga Inai Machi",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/10/77957.jpg",
                   "large":"https://cdn.myanimelist.net/images/anime/10/77957l.jpg"
                },
                "mean":8.3
             },
             "ranking":{
                "rank":29
             }
          },
          {
             "node":{
                "id":22199,
                "title":"Akame ga Kill!",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/1429/95946.webp",
                   "large":"https://cdn.myanimelist.net/images/anime/1429/95946l.webp"
                },
                "mean":7.47
             },
             "ranking":{
                "rank":30
             }
          },
          {
             "node":{
                "id":6547,
                "title":"Angel Beats!",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/1244/111115.webp",
                   "large":"https://cdn.myanimelist.net/images/anime/1244/111115l.webp"
                },
                "mean":8.05
             },
             "ranking":{
                "rank":31
             }
          },
          {
             "node":{
                "id":23755,
                "title":"Nanatsu no Taizai",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/8/65409.webp",
                   "large":"https://cdn.myanimelist.net/images/anime/8/65409l.webp"
                },
                "mean":7.62
             },
             "ranking":{
                "rank":32
             }
          },
          {
             "node":{
                "id":40028,
                "title":"Shingeki no Kyojin: The Final Season",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/1000/110531.jpg",
                   "large":"https://cdn.myanimelist.net/images/anime/1000/110531l.jpg"
                },
                "mean":8.78
             },
             "ranking":{
                "rank":33
             }
          },
          {
             "node":{
                "id":24833,
                "title":"Ansatsu Kyoushitsu",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/5/75639.webp",
                   "large":"https://cdn.myanimelist.net/images/anime/5/75639l.webp"
                },
                "mean":8.08
             },
             "ranking":{
                "rank":34
             }
          },
          {
             "node":{
                "id":269,
                "title":"Bleach",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/1541/147774.jpg",
                   "large":"https://cdn.myanimelist.net/images/anime/1541/147774l.jpg"
                },
                "mean":7.96
             },
             "ranking":{
                "rank":35
             }
          },
          {
             "node":{
                "id":10620,
                "title":"Mirai Nikki (TV)",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/13/33465.jpg",
                   "large":"https://cdn.myanimelist.net/images/anime/13/33465l.jpg"
                },
                "mean":7.39
             },
             "ranking":{
                "rank":36
             }
          },
          {
             "node":{
                "id":20583,
                "title":"Haikyuu!!",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/7/76014.jpg",
                   "large":"https://cdn.myanimelist.net/images/anime/7/76014l.jpg"
                },
                "mean":8.44
             },
             "ranking":{
                "rank":37
             }
          },
          {
             "node":{
                "id":30831,
                "title":"Kono Subarashii Sekai ni Shukufuku wo!",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/1895/142748.webp",
                   "large":"https://cdn.myanimelist.net/images/anime/1895/142748l.webp"
                },
                "mean":8.1
             },
             "ranking":{
                "rank":38
             }
          },
          {
             "node":{
                "id":37779,
                "title":"Yakusoku no Neverland",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/1830/118780.jpg",
                   "large":"https://cdn.myanimelist.net/images/anime/1830/118780l.jpg"
                },
                "mean":8.48
             },
             "ranking":{
                "rank":39
             }
          },
          {
             "node":{
                "id":21881,
                "title":"Sword Art Online II",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/1223/121999.jpg",
                   "large":"https://cdn.myanimelist.net/images/anime/1223/121999l.jpg"
                },
                "mean":6.71
             },
             "ranking":{
                "rank":40
             }
          },
          {
             "node":{
                "id":9919,
                "title":"Ao no Exorcist",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/10/75195.jpg",
                   "large":"https://cdn.myanimelist.net/images/anime/10/75195l.jpg"
                },
                "mean":7.48
             },
             "ranking":{
                "rank":41
             }
          },
          {
             "node":{
                "id":1,
                "title":"Cowboy Bebop",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/4/19644.jpg",
                   "large":"https://cdn.myanimelist.net/images/anime/4/19644l.jpg"
                },
                "mean":8.75
             },
             "ranking":{
                "rank":42
             }
          },
          {
             "node":{
                "id":22535,
                "title":"Kiseijuu: Sei no Kakuritsu",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/3/73178.webp",
                   "large":"https://cdn.myanimelist.net/images/anime/3/73178l.webp"
                },
                "mean":8.32
             },
             "ranking":{
                "rank":43
             }
          },
          {
             "node":{
                "id":199,
                "title":"Sen to Chihiro no Kamikakushi",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/6/79597.webp",
                   "large":"https://cdn.myanimelist.net/images/anime/6/79597l.webp"
                },
                "mean":8.77
             },
             "ranking":{
                "rank":44
             }
          },
          {
             "node":{
                "id":30,
                "title":"Shinseiki Evangelion",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/1314/108941.webp",
                   "large":"https://cdn.myanimelist.net/images/anime/1314/108941l.webp"
                },
                "mean":8.36
             },
             "ranking":{
                "rank":45
             }
          },
          {
             "node":{
                "id":33352,
                "title":"Violet Evergarden",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/1795/95088.webp",
                   "large":"https://cdn.myanimelist.net/images/anime/1795/95088l.webp"
                },
                "mean":8.68
             },
             "ranking":{
                "rank":46
             }
          },
          {
             "node":{
                "id":2904,
                "title":"Code Geass: Hangyaku no Lelouch R2",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/1088/135089.jpg",
                   "large":"https://cdn.myanimelist.net/images/anime/1088/135089l.jpg"
                },
                "mean":8.91
             },
             "ranking":{
                "rank":47
             }
          },
          {
             "node":{
                "id":28223,
                "title":"Death Parade",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/5/71553.webp",
                   "large":"https://cdn.myanimelist.net/images/anime/5/71553l.webp"
                },
                "mean":8.14
             },
             "ranking":{
                "rank":48
             }
          },
          {
             "node":{
                "id":38691,
                "title":"Dr. Stone",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/1613/102576.webp",
                   "large":"https://cdn.myanimelist.net/images/anime/1613/102576l.webp"
                },
                "mean":8.27
             },
             "ranking":{
                "rank":49
             }
          },
          {
             "node":{
                "id":27899,
                "title":"Tokyo Ghoul u221aA",
                "main_picture":{
                   "medium":"https://cdn.myanimelist.net/images/anime/1889/123307.webp",
                   "large":"https://cdn.myanimelist.net/images/anime/1889/123307l.webp"
                },
                "mean":7.02
             },
             "ranking":{
                "rank":50
             }
          }
       ],
       "paging":{
          "next":"https://api.myanimelist.net/v2/anime/ranking?offset=50&ranking_type=bypopularity&limit=50&fields=id%2Ctitle%2Cmain_picture%2Cmean"
       }
    }
    """
}
