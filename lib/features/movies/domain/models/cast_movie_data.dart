import 'dart:convert';
/// id : 533535
/// cast : [{"adult":false,"gender":2,"id":10859,"known_for_department":"Acting","name":"Ryan Reynolds","original_name":"Ryan Reynolds","popularity":181.416,"profile_path":"/2Orm6l3z3zukF1q0AgIOUqvwLeB.jpg","cast_id":252,"character":"Wade Wilson / Deadpool / Nicepool","credit_id":"66a0eeb7fadd7c4c9c38207f","order":0},{"adult":false,"gender":2,"id":6968,"known_for_department":"Acting","name":"Hugh Jackman","original_name":"Hugh Jackman","popularity":119.817,"profile_path":"/oX6CpXmnXCHLyqsa4NEed1DZAKx.jpg","cast_id":253,"character":"Logan / Wolverine","credit_id":"66a0eef54192f70fea09dc90","order":1},{"adult":false,"gender":3,"id":2324569,"known_for_department":"Acting","name":"Emma Corrin","original_name":"Emma Corrin","popularity":74.836,"profile_path":"/w4gFlPOqdSMRSH1dsuqQMKCGBWg.jpg","cast_id":254,"character":"Cassandra Nova","credit_id":"66a0ef1ca5ab9d9f3d705ed1","order":2},{"adult":false,"gender":2,"id":15576,"known_for_department":"Acting","name":"Matthew Macfadyen","original_name":"Matthew Macfadyen","popularity":35.288,"profile_path":"/2FF3Yjxd7DYR4EIJL6s2GpKDMkJ.jpg","cast_id":256,"character":"Mr. Paradox","credit_id":"66a0ef54aab1abca4f09e107","order":3},{"adult":false,"gender":1,"id":1464650,"known_for_department":"Acting","name":"Dafne Keen","original_name":"Dafne Keen","popularity":66.289,"profile_path":"/g325OIjIHrFr0te8ewPfhKQ2SKj.jpg","cast_id":271,"character":"Laura / X-23","credit_id":"66a0f13d76eb26a1ca381cc0","order":4},{"adult":false,"gender":2,"id":15277,"known_for_department":"Acting","name":"Jon Favreau","original_name":"Jon Favreau","popularity":38.806,"profile_path":"/tnx7iMVydPQXGOoLsxXl84PXtbA.jpg","cast_id":278,"character":"Happy Hogan","credit_id":"66a0f232a9212776c5e0d638","order":5},{"adult":false,"gender":1,"id":54882,"known_for_department":"Acting","name":"Morena Baccarin","original_name":"Morena Baccarin","popularity":82.126,"profile_path":"/kBSKKaOtsqIzZPhtEeHfCBmhWl9.jpg","cast_id":255,"character":"Vanessa","credit_id":"66a0ef353e68414965705f0c","order":6},{"adult":false,"gender":2,"id":1091324,"known_for_department":"Acting","name":"Rob Delaney","original_name":"Rob Delaney","popularity":49.673,"profile_path":"/tbZAQZLhU1CDyaSBGfgBTTRLDQq.jpg","cast_id":261,"character":"Peter","credit_id":"66a0f01b537cac04b109e17e","order":7},{"adult":false,"gender":1,"id":122750,"known_for_department":"Acting","name":"Leslie Uggams","original_name":"Leslie Uggams","popularity":32.376,"profile_path":"/peLaqLcs3y2WY4TbrLOXQGt9I8S.jpg","cast_id":259,"character":"Blind Al","credit_id":"66a0efdb073923ad4918be52","order":8},{"adult":false,"gender":1,"id":9278,"known_for_department":"Acting","name":"Jennifer Garner","original_name":"Jennifer Garner","popularity":64.081,"profile_path":"/ftymEXqdTnXfaI6dGd9qrJoFOSE.jpg","cast_id":258,"character":"Elektra","credit_id":"66a0efbef3ce01f00535f865","order":9},{"adult":false,"gender":2,"id":10814,"known_for_department":"Acting","name":"Wesley Snipes","original_name":"Wesley Snipes","popularity":101.042,"profile_path":"/81D6oJ81kiQ5xnEHhaHrY29ntdO.jpg","cast_id":272,"character":"Blade","credit_id":"66a0f1546aef695b11dd76e5","order":10},{"adult":false,"gender":2,"id":38673,"known_for_department":"Acting","name":"Channing Tatum","original_name":"Channing Tatum","popularity":96.11,"profile_path":"/xdnstENLdWMPWt9qyhtf695L4t6.jpg","cast_id":274,"character":"Gambit","credit_id":"66a0f19973c78cc0c05dadf0","order":11},{"adult":false,"gender":2,"id":16828,"known_for_department":"Acting","name":"Chris Evans","original_name":"Chris Evans","popularity":57.34,"profile_path":"/3bOGNsHlrswhyW79uvIHH1V43JI.jpg","cast_id":288,"character":"Johnny Storm","credit_id":"66a10565ceae5015037060b3","order":12},{"adult":false,"gender":2,"id":73968,"known_for_department":"Acting","name":"Henry Cavill","original_name":"Henry Cavill","popularity":70.991,"profile_path":"/iWdKjMry5Pt7vmxU7bmOQsIUyHa.jpg","cast_id":280,"character":"The Cavillrine","credit_id":"66a0f26fbffb534f84e0d621","order":13},{"adult":false,"gender":1,"id":134774,"known_for_department":"Acting","name":"Wunmi Mosaku","original_name":"Wunmi Mosaku","popularity":29.055,"profile_path":"/mWDsVCo9sBcekrsjUTsoCFLhtYt.jpg","cast_id":277,"character":"B-15","credit_id":"66a0f20f1e7b0e8bf5dd7752","order":14},{"adult":false,"gender":2,"id":11022,"known_for_department":"Acting","name":"Aaron Stanford","original_name":"Aaron Stanford","popularity":28.53,"profile_path":"/xt2c0vdTb6UmSFq6fl09iCcIFve.jpg","cast_id":265,"character":"Pyro","credit_id":"66a0f09a3631af76bb09dac3","order":15},{"adult":false,"gender":2,"id":9832,"known_for_department":"Acting","name":"Tyler Mane","original_name":"Tyler Mane","popularity":23.547,"profile_path":"/h5knoBWStVv7a0FKPwfKV7f7Ez1.jpg","cast_id":266,"character":"Sabretooth","credit_id":"66a0f0b53eaae4a1e3bf6473","order":16},{"adult":false,"gender":2,"id":1109702,"known_for_department":"Acting","name":"Karan Soni","original_name":"Karan Soni","popularity":25.624,"profile_path":"/t3eNrzRKy3wTVCUiEp002UXbjxX.jpg","cast_id":263,"character":"Dopinder","credit_id":"66a0f06295bbae847e381c4f","order":17},{"adult":false,"gender":1,"id":1492326,"known_for_department":"Acting","name":"Brianna Hildebrand","original_name":"Brianna Hildebrand","popularity":27.342,"profile_path":"/8lGwV4rMQReWMlsXhLBYMRTYzTA.jpg","cast_id":257,"character":"Negasonic Teenage Warhead","credit_id":"66a0efa41570ed494f18bd16","order":18},{"adult":false,"gender":1,"id":230660,"known_for_department":"Acting","name":"Shioli Kutsuna","original_name":"Shioli Kutsuna","popularity":34.537,"profile_path":"/5EdMbcRIemzLszjEr36Ic0Obmdb.jpg","cast_id":264,"character":"Yukio","credit_id":"66a0f0811570ed494f18bd26","order":19},{"adult":false,"gender":2,"id":80507,"known_for_department":"Acting","name":"Stefan Kapicic","original_name":"Stefan Kapicic","popularity":19.917,"profile_path":"/6qHO7ckiyjLNOmW0v5RZj1MpLBj.jpg","cast_id":260,"character":"Colossus (voice)","credit_id":"66a0eff7958531da34bf6286","order":20},{"adult":false,"gender":2,"id":215887,"known_for_department":"Acting","name":"Randal Reeder","original_name":"Randal Reeder","popularity":16.153,"profile_path":"/eJfW7w36Vl8dEnN9T2dnlkUReWG.jpg","cast_id":279,"character":"Buck","credit_id":"66a0f2536e2a098d255dad9b","order":21},{"adult":false,"gender":2,"id":1610940,"known_for_department":"Acting","name":"Lewis Tan","original_name":"Lewis Tan","popularity":16.289,"profile_path":"/ik347wakcZRfULiLbjGJpRcqSQz.jpg","cast_id":262,"character":"Shatterstar","credit_id":"66a0f0364f446414cf0bea38","order":22},{"adult":false,"gender":2,"id":4848495,"known_for_department":"Acting","name":"Nick Pauley","original_name":"Nick Pauley","popularity":5.19,"profile_path":"/xUmpb3crQFGh7TuI9ezk0gv7oAN.jpg","cast_id":301,"character":"Dancepool","credit_id":"66a1f00aadc660b3fb265bf9","order":23},{"adult":false,"gender":1,"id":963257,"known_for_department":"Acting","name":"Sonita Henry","original_name":"Sonita Henry","popularity":21.45,"profile_path":"/oIBILFSVqHT2warKlXSPDML3llI.jpg","cast_id":302,"character":"Mrs. Chipman","credit_id":"66a1f015c7271d45f9cf8367","order":24},{"adult":false,"gender":2,"id":1850835,"known_for_department":"Acting","name":"Ryan McKen","original_name":"Ryan McKen","popularity":3.261,"profile_path":"/lGVReBLi74MCxaCBr2KBx1zTiWV.jpg","cast_id":303,"character":"Mr. Chipman","credit_id":"66a1f023a9212776c5e0fc39","order":25},{"adult":false,"gender":0,"id":4848497,"known_for_department":"Acting","name":"Nanak Phlora","original_name":"Nanak Phlora","popularity":0.93,"profile_path":null,"cast_id":304,"character":"Elliot Chipman","credit_id":"66a1f035a830bd008f088731","order":26},{"adult":false,"gender":0,"id":4848499,"known_for_department":"Acting","name":"Aydin Ahmed","original_name":"Aydin Ahmed","popularity":0.371,"profile_path":null,"cast_id":305,"character":"Kevin Chipman","credit_id":"66a1f063eb5b530b3acf829e","order":27},{"adult":false,"gender":2,"id":1649401,"known_for_department":"Acting","name":"Leemore Marrett Jr.","original_name":"Leemore Marrett Jr.","popularity":14.346,"profile_path":"/lrr8xbevZFfCMixuSPnUjwO2Oqa.jpg","cast_id":306,"character":"Minuteman Leader","credit_id":"66a1f075fd5d5c9bfedda32c","order":28},{"adult":false,"gender":2,"id":1587576,"known_for_department":"Acting","name":"James Dryden","original_name":"James Dryden","popularity":11.023,"profile_path":"/9eYxdu0dzydWEPzNHIDYVwpQSTW.jpg","cast_id":307,"character":"TVA Tech","credit_id":"66a1f086bcf6b96327f78c14","order":29},{"adult":false,"gender":2,"id":4698632,"known_for_department":"Acting","name":"Ollie Palmer","original_name":"Ollie Palmer","popularity":1.249,"profile_path":"/kICsR18nsLMjxMrIWjJKtOsAkJj.jpg","cast_id":308,"character":"Bar Patron","credit_id":"66a1f0a22b0919f669a0d0ba","order":30},{"adult":false,"gender":2,"id":167008,"known_for_department":"Acting","name":"Greg Hemphill","original_name":"Greg Hemphill","popularity":8.032,"profile_path":"/juE0ZmdUbxfMBhtOz9LBV8MiLKH.jpg","cast_id":281,"character":"Seedy Bartender","credit_id":"66a0f2914194f9b3d7dd7722","order":31},{"adult":false,"gender":2,"id":3158217,"known_for_department":"Acting","name":"Aaron W Reed","original_name":"Aaron W Reed","popularity":50.463,"profile_path":"/e9dW9ezNxeGEu8MnQ1NTOz3PM93.jpg","cast_id":323,"character":"Juggernaut","credit_id":"66a301b3073923ad4918fbc1","order":32},{"adult":false,"gender":0,"id":4854075,"known_for_department":"Acting","name":"Mike Waters","original_name":"Mike Waters","popularity":2.295,"profile_path":null,"cast_id":329,"character":"Blob","credit_id":"66a6881cef66779c2a40bae8","order":33},{"adult":false,"gender":2,"id":78597,"known_for_department":"Acting","name":"Rob McElhenney","original_name":"Rob McElhenney","popularity":18.497,"profile_path":"/gcep3ItyxaZ3ljH1IS6Lfkm8IAs.jpg","cast_id":330,"character":"TVA Soldier","credit_id":"66a6886032810e2e630954ff","order":34},{"adult":false,"gender":1,"id":4854086,"known_for_department":"Acting","name":"James Reynolds","original_name":"James Reynolds","popularity":1.593,"profile_path":null,"cast_id":331,"character":"Screaming Mutant (voice)","credit_id":"66a688dce1321cc4eb7463d4","order":35},{"adult":false,"gender":2,"id":1364950,"known_for_department":"Acting","name":"Ed Kear","original_name":"Ed Kear","popularity":10.989,"profile_path":"/jB1QY1DSN253bbtz51MHXEBj9O8.jpg","cast_id":309,"character":"Outpost Tech","credit_id":"66a1f0ddd9ec811948cf8314","order":36},{"adult":false,"gender":2,"id":1951011,"known_for_department":"Acting","name":"Paul G. Raymond","original_name":"Paul G. Raymond","popularity":5.86,"profile_path":"/28pPNcmHZuH4XM4eUHoFGZF6LGA.jpg","cast_id":310,"character":"TVA Office Agent","credit_id":"66a1f0e8e455b7e8af18e453","order":37},{"adult":false,"gender":1,"id":59175,"known_for_department":"Acting","name":"Blake Lively","original_name":"Blake Lively","popularity":130.333,"profile_path":"/oWQG50XE8uTYYskUOs5LLj4dMZS.jpg","cast_id":313,"character":"Ladypool (voice)","credit_id":"66a1f42ebffb534f84e0fe30","order":38},{"adult":false,"gender":0,"id":4846410,"known_for_department":"Acting","name":"Inez Reynolds","original_name":"Inez Reynolds","popularity":0.679,"profile_path":null,"cast_id":318,"character":"Kidpool (voice)","credit_id":"66a30047f807a42be983c2e1","order":39},{"adult":false,"gender":2,"id":51797,"known_for_department":"Acting","name":"Nathan Fillion","original_name":"Nathan Fillion","popularity":55.041,"profile_path":"/aW6vCxkUZtwb6iH2Wf88Uq0XNVv.jpg","cast_id":319,"character":"Headpool (voice)","credit_id":"66a300706efb745b63d4f23e","order":40},{"adult":false,"gender":2,"id":10297,"known_for_department":"Acting","name":"Matthew McConaughey","original_name":"Matthew McConaughey","popularity":49.593,"profile_path":"/sY2mwpafcwqyYS1sOySu1MENDse.jpg","cast_id":314,"character":"Cowboypool (voice)","credit_id":"66a201662f9da16572383f13","order":41},{"adult":false,"gender":0,"id":4850040,"known_for_department":"Acting","name":"OIin Reynolds","original_name":"OIin Reynolds","popularity":2.055,"profile_path":null,"cast_id":320,"character":"Babypool (voice)","credit_id":"66a300856056ca7331cf98a2","order":42},{"adult":false,"gender":0,"id":4338091,"known_for_department":"Acting","name":"Paul Mullin","original_name":"Paul Mullin","popularity":0.431,"profile_path":"/bZZ4wvdMJtt6aPUSQAAY4G7mzbe.jpg","cast_id":321,"character":"Welshpool","credit_id":"66a30099f410fb5dd314f3ab","order":43},{"adult":false,"gender":2,"id":2280082,"known_for_department":"Crew","name":"Alex Kyshkovych","original_name":"Alex Kyshkovych","popularity":5.952,"profile_path":"/nyy5o659Z1LfLl9ckRT1FiNop4U.jpg","cast_id":322,"character":"Canadapool","credit_id":"66a300a949a40fe7d55d46de","order":44},{"adult":false,"gender":2,"id":74568,"known_for_department":"Acting","name":"Chris Hemsworth","original_name":"Chris Hemsworth","popularity":73.878,"profile_path":"/xkHHiJXraaMFXgRYspN6KVrFn17.jpg","cast_id":333,"character":"Thor Odinson (archive footage) (uncredited)","credit_id":"66a7ee63db5ac8177656c57b","order":45},{"adult":false,"gender":2,"id":2423284,"known_for_department":"Crew","name":"Billy Clements","original_name":"Billy Clements","popularity":4.369,"profile_path":"/nipJ22DXJBsdM1teQodwop42U6S.jpg","cast_id":332,"character":"Russian (uncredited)","credit_id":"66a6899a1156084b5fdaf78d","order":46},{"adult":false,"gender":2,"id":4857614,"known_for_department":"Acting","name":"Daniel Medina Ramos","original_name":"Daniel Medina Ramos","popularity":2.23,"profile_path":"/3ZmlKGTlBF09ZxmoOH9lB1xdsf2.jpg","cast_id":335,"character":"Toad (uncredited)","credit_id":"66a8ff8cb47e5a4ccdebc6c0","order":47},{"adult":false,"gender":1,"id":4115448,"known_for_department":"Crew","name":"Jade Lye","original_name":"Jade Lye","popularity":7.279,"profile_path":"/4r1zrh8Wf32W74fltUn37Uz2FfV.jpg","cast_id":337,"character":"Lady Deathstrike (uncredited)","credit_id":"66a96e46f9c9f9f3a4e3aca7","order":48},{"adult":false,"gender":0,"id":4858600,"known_for_department":"Crew","name":"Nilly Cetin","original_name":"Nilly Cetin","popularity":1.799,"profile_path":"/vLKWIjSztXEHUOMFolVudij4jbs.jpg","cast_id":339,"character":"Quill (uncredited)","credit_id":"66a97034b2bfdd9e37837c54","order":49},{"adult":false,"gender":2,"id":2423287,"known_for_department":"Crew","name":"Eduardo Gago Muñoz","original_name":"Eduardo Gago Muñoz","popularity":4.782,"profile_path":"/r9DaaOfiACoUX7Ezs63K8DZrpHI.jpg","cast_id":341,"character":"Azazel (uncredited)","credit_id":"66a971ad9f6dabe412bfccf3","order":50},{"adult":false,"gender":0,"id":4858628,"known_for_department":"Crew","name":"Chloe Kibble","original_name":"Chloe Kibble","popularity":3.195,"profile_path":"/6jgp3IJenhe9R1cdV25gfzlSDpy.jpg","cast_id":344,"character":"Callisto (uncredited)","credit_id":"66a9757cdca616e20759c86c","order":51},{"adult":false,"gender":0,"id":2151833,"known_for_department":"Crew","name":"Curtis Rowland Small","original_name":"Curtis Rowland Small","popularity":2.884,"profile_path":"/lgAOeihmiZ2CdKWpa35BxpBeSiK.jpg","cast_id":346,"character":"Bullseye (uncredited)","credit_id":"66a9773bfd1353a12e837c7e","order":52},{"adult":false,"gender":1,"id":4733517,"known_for_department":"Crew","name":"Ayesha Hussain","original_name":"Ayesha Hussain","popularity":0.001,"profile_path":"/7bChdeG2k7GoAf8nG12p05Ssrbe.jpg","cast_id":347,"character":"Psylocke (uncredited)","credit_id":"66a9789265780b6119cd19ed","order":53},{"adult":false,"gender":0,"id":4858668,"known_for_department":"Crew","name":"Jessica Walker","original_name":"Jessica Walker","popularity":3.9,"profile_path":"/5fZ41rVpPKI5VpBFt2dBRcOaHtL.jpg","cast_id":349,"character":"Arclight (uncredited)","credit_id":"66a979ebb2bfdd9e37837c98","order":54},{"adult":false,"gender":2,"id":1674196,"known_for_department":"Acting","name":"Harry Holland","original_name":"Harry Holland","popularity":17.981,"profile_path":"/8gsfzGUySLLaT0GCzuWxAfLWOWS.jpg","cast_id":334,"character":"Haroldpool (uncredited)","credit_id":"66a806f50fb65ccb569fd9ee","order":55},{"adult":false,"gender":2,"id":3411282,"known_for_department":"Crew","name":"Kevin Fortin","original_name":"Kevin Fortin","popularity":1.487,"profile_path":"/bRBUOhX9Oc0A2nNARsP4jkoDzva.jpg","cast_id":350,"character":"Zenpool (uncredited)","credit_id":"66ade5ed089fe1f033c05828","order":56}]
/// crew : [{"adult":false,"gender":2,"id":934844,"known_for_department":"Writing","name":"Rob Liefeld","original_name":"Rob Liefeld","popularity":8.311,"profile_path":"/2WF4E4afbS2nCUNV3ksTGdouyvf.jpg","credit_id":"5be4ba26c3a36810d20360c5","department":"Writing","job":"Characters"},{"adult":false,"gender":2,"id":1222480,"known_for_department":"Writing","name":"Fabian Nicieza","original_name":"Fabian Nicieza","popularity":4.778,"profile_path":"/vV0VKVThe1o6fyS6SCRAlVNVdLX.jpg","credit_id":"5be4ba01c3a36810d20360b3","department":"Writing","job":"Characters"},{"adult":false,"gender":2,"id":10850,"known_for_department":"Production","name":"Kevin Feige","original_name":"Kevin Feige","popularity":41.021,"profile_path":"/w2VgeSlWhws5CmpxJMNBSCvELnx.jpg","credit_id":"5e1163b7c740d900150a4656","department":"Production","job":"Producer"},{"adult":false,"gender":2,"id":17825,"known_for_department":"Directing","name":"Shawn Levy","original_name":"Shawn Levy","popularity":40.228,"profile_path":"/j1CXZgmfvFeD7S3PYtsEk8H3ebB.jpg","credit_id":"622bc4c8a579f9006f1f0a6d","department":"Directing","job":"Director"},{"adult":false,"gender":2,"id":7932,"known_for_department":"Writing","name":"Rhett Reese","original_name":"Rhett Reese","popularity":11.66,"profile_path":"/8QjgT3ffjzSTfih5C0LpFEea5Ps.jpg","credit_id":"622be2de9a358d0071934f94","department":"Writing","job":"Writer"},{"adult":false,"gender":2,"id":91269,"known_for_department":"Writing","name":"Paul Wernick","original_name":"Paul Wernick","popularity":10.941,"profile_path":"/12wCVgUkLv7RejadXXZrtL8Tj5N.jpg","credit_id":"622be2ea24f2ce001d7e0365","department":"Writing","job":"Writer"},{"adult":false,"gender":2,"id":57027,"known_for_department":"Production","name":"Louis D'Esposito","original_name":"Louis D'Esposito","popularity":10.916,"profile_path":"/mPy6hxHrHoEOWdljLyZM6DNBSPn.jpg","credit_id":"6333c20dd465370082a9ee7b","department":"Production","job":"Executive Producer"},{"adult":false,"gender":2,"id":10859,"known_for_department":"Acting","name":"Ryan Reynolds","original_name":"Ryan Reynolds","popularity":181.416,"profile_path":"/2Orm6l3z3zukF1q0AgIOUqvwLeB.jpg","credit_id":"6333da1330f79c008f664626","department":"Production","job":"Producer"},{"adult":false,"gender":2,"id":10859,"known_for_department":"Acting","name":"Ryan Reynolds","original_name":"Ryan Reynolds","popularity":181.416,"profile_path":"/2Orm6l3z3zukF1q0AgIOUqvwLeB.jpg","credit_id":"6333da45eec4f300801b6800","department":"Writing","job":"Writer"},{"adult":false,"gender":2,"id":17825,"known_for_department":"Directing","name":"Shawn Levy","original_name":"Shawn Levy","popularity":40.228,"profile_path":"/j1CXZgmfvFeD7S3PYtsEk8H3ebB.jpg","credit_id":"63eba86a8e870200a98925c8","department":"Production","job":"Producer"},{"adult":false,"gender":2,"id":1219669,"known_for_department":"Writing","name":"Zeb Wells","original_name":"Zeb Wells","popularity":9.061,"profile_path":"/l6PCnqbpqCnqyJ8lXQds8Pq71uw.jpg","credit_id":"6450b829e942ee0e357183db","department":"Writing","job":"Writer"},{"adult":false,"gender":1,"id":7232,"known_for_department":"Production","name":"Sarah Halley Finn","original_name":"Sarah Halley Finn","popularity":10.135,"profile_path":"/jxECVz09YGZAg1AmdzfEkPm4xeY.jpg","credit_id":"6455815b57d37801717cd4a6","department":"Production","job":"Casting"},{"adult":false,"gender":2,"id":17825,"known_for_department":"Directing","name":"Shawn Levy","original_name":"Shawn Levy","popularity":40.228,"profile_path":"/j1CXZgmfvFeD7S3PYtsEk8H3ebB.jpg","credit_id":"645816486c84920181874390","department":"Writing","job":"Writer"},{"adult":false,"gender":2,"id":1017789,"known_for_department":"Camera","name":"George Richmond","original_name":"George Richmond","popularity":5.307,"profile_path":"/xxDOdxyiwf89xE5OULLoERKW6oG.jpg","credit_id":"645d3da8fe077a5cafbec4dc","department":"Camera","job":"Director of Photography"},{"adult":false,"gender":2,"id":1104780,"known_for_department":"Art","name":"Ray Chan","original_name":"Ray Chan","popularity":3.695,"profile_path":"/u5QThOMyOpZKPXNgC2M00chzcFc.jpg","credit_id":"646a469d33a37600e67b00e9","department":"Art","job":"Production Design"},{"adult":false,"gender":1,"id":17675,"known_for_department":"Costume & Make-Up","name":"Mayes C. Rubeo","original_name":"Mayes C. Rubeo","popularity":3.068,"profile_path":"/zq3OHlYKVGPQd1gbojz3xY6t5pT.jpg","credit_id":"648114b8e375c000acc396b7","department":"Costume & Make-Up","job":"Costume Design"},{"adult":false,"gender":2,"id":1081074,"known_for_department":"Crew","name":"George Cottle","original_name":"George Cottle","popularity":14.483,"profile_path":"/jwQmBfZCJk7V9W96r7fXo3JGyMs.jpg","credit_id":"64811590e2726000e8bedcff","department":"Directing","job":"Second Unit Director"},{"adult":false,"gender":2,"id":1042699,"known_for_department":"Sound","name":"Rob Simonsen","original_name":"Rob Simonsen","popularity":4.668,"profile_path":"/oLz4I5M32k3ynlgMeph9LFsBRsP.jpg","credit_id":"64adcf6d3e2ec8012ee5724d","department":"Sound","job":"Original Music Composer"},{"adult":false,"gender":2,"id":1117747,"known_for_department":"Production","name":"Mitchell Bell","original_name":"Mitchell Bell","popularity":4.49,"profile_path":"/vTgWJRc3ABqePIrOwsmr87aLik6.jpg","credit_id":"64aea6f13e2ec8012ee5fde2","department":"Production","job":"Co-Producer"},{"adult":false,"gender":1,"id":1266574,"known_for_department":"Art","name":"Naomi Moore","original_name":"Naomi Moore","popularity":1.579,"profile_path":null,"credit_id":"654939e72866fa00e1f021d9","department":"Art","job":"Set Decoration"},{"adult":false,"gender":2,"id":24192,"known_for_department":"Sound","name":"Dave Jordan","original_name":"Dave Jordan","popularity":9.894,"profile_path":"/btzUgkKCllxClxIgLhmhZ1qaPw.jpg","credit_id":"65493a401ac2927b3028ca48","department":"Sound","job":"Music Supervisor"},{"adult":false,"gender":2,"id":1842127,"known_for_department":"Editing","name":"Shane Reid","original_name":"Shane Reid","popularity":2.334,"profile_path":"/idptgX7GBTwqcM7WKKaChThDFQN.jpg","credit_id":"656244223679a1097873b704","department":"Editing","job":"Editor"},{"adult":false,"gender":1,"id":7200,"known_for_department":"Production","name":"Lauren Shuler Donner","original_name":"Lauren Shuler Donner","popularity":4.379,"profile_path":"/a0oY5BiS6ubJv3Mxh83XH8S4fH7.jpg","credit_id":"65c95fe3ce6c4c017cbaee00","department":"Production","job":"Producer"},{"adult":false,"gender":1,"id":1500412,"known_for_department":"Production","name":"Wendy Jacobson","original_name":"Wendy Jacobson","popularity":3.347,"profile_path":null,"credit_id":"65c9600baad9c2017db8c411","department":"Production","job":"Executive Producer"},{"adult":false,"gender":1,"id":57634,"known_for_department":"Production","name":"Mary McLaglen","original_name":"Mary McLaglen","popularity":3.606,"profile_path":"/p2Ll42Ov1ZusGSKGJeyy5MCeP7R.jpg","credit_id":"65c96020aaec71019b59e2bc","department":"Production","job":"Executive Producer"},{"adult":false,"gender":2,"id":10956,"known_for_department":"Directing","name":"Josh McLaglen","original_name":"Josh McLaglen","popularity":8.407,"profile_path":"/5PJWCWlKF3kJWOHSqs7l7M7nZK9.jpg","credit_id":"65c96028ce6c4c0149b9796b","department":"Production","job":"Executive Producer"},{"adult":false,"gender":2,"id":7932,"known_for_department":"Writing","name":"Rhett Reese","original_name":"Rhett Reese","popularity":11.66,"profile_path":"/8QjgT3ffjzSTfih5C0LpFEea5Ps.jpg","credit_id":"65c9602e266778017c598c50","department":"Production","job":"Executive Producer"},{"adult":false,"gender":2,"id":91269,"known_for_department":"Writing","name":"Paul Wernick","original_name":"Paul Wernick","popularity":10.941,"profile_path":"/12wCVgUkLv7RejadXXZrtL8Tj5N.jpg","credit_id":"65c96038e4b5760164150eb9","department":"Production","job":"Executive Producer"},{"adult":false,"gender":2,"id":2385846,"known_for_department":"Production","name":"George Dewey","original_name":"George Dewey","popularity":3.29,"profile_path":"/or0HVsTZ5KsQvpI8ag0XNjFLUUv.jpg","credit_id":"65c96043a93d2501634c1178","department":"Production","job":"Executive Producer"},{"adult":false,"gender":2,"id":11092,"known_for_department":"Production","name":"Simon Kinberg","original_name":"Simon Kinberg","popularity":17.766,"profile_path":"/3xvTvkIaKfU276cpajiAoGjvaaO.jpg","credit_id":"65c9604c8d77c4017b471b14","department":"Production","job":"Executive Producer"},{"adult":false,"gender":2,"id":71230,"known_for_department":"Production","name":"Jonathon Komack Martin","original_name":"Jonathon Komack Martin","popularity":3.584,"profile_path":"/iyFhEYrvbc5FH7YFMd7tTJi9oe3.jpg","credit_id":"65c96053a93d2501844da71f","department":"Production","job":"Executive Producer"},{"adult":false,"gender":2,"id":2014531,"known_for_department":"Visual Effects","name":"Swen Gillberg","original_name":"Swen Gillberg","popularity":1.247,"profile_path":"/9xyGlyUVugb2aLVnjHCEOmSHM3m.jpg","credit_id":"65db6cee05b549016216f4b0","department":"Visual Effects","job":"Visual Effects Supervisor"},{"adult":false,"gender":2,"id":54271,"known_for_department":"Editing","name":"Dean Zimmerman","original_name":"Dean Zimmerman","popularity":7.397,"profile_path":"/6mKK4thSO0CthmhygO2spWyVjcv.jpg","credit_id":"65f4d7c42222f60186e5b9c0","department":"Editing","job":"Editor"},{"adult":false,"gender":2,"id":1081074,"known_for_department":"Crew","name":"George Cottle","original_name":"George Cottle","popularity":14.483,"profile_path":"/jwQmBfZCJk7V9W96r7fXo3JGyMs.jpg","credit_id":"6606f588a6ddcb017c45a174","department":"Crew","job":"Stunt Coordinator"},{"adult":false,"gender":2,"id":2014410,"known_for_department":"Art","name":"Alex Bowens","original_name":"Alex Bowens","popularity":1.581,"profile_path":null,"credit_id":"6627dff9cb6db500caad41e3","department":"Art","job":"Art Direction"},{"adult":false,"gender":1,"id":24260,"known_for_department":"Costume & Make-Up","name":"Claire Pritchard","original_name":"Claire Pritchard","popularity":1.573,"profile_path":"/9yoXqLnATg2qzE4DORtYDdGzp6c.jpg","credit_id":"6627e48663d937018775aebf","department":"Costume & Make-Up","job":"Hair Designer"},{"adult":false,"gender":2,"id":10956,"known_for_department":"Directing","name":"Josh McLaglen","original_name":"Josh McLaglen","popularity":8.407,"profile_path":"/5PJWCWlKF3kJWOHSqs7l7M7nZK9.jpg","credit_id":"66293832cb6db50163b07956","department":"Directing","job":"First Assistant Director"},{"adult":false,"gender":2,"id":15017,"known_for_department":"Costume & Make-Up","name":"Bill Corso","original_name":"Bill Corso","popularity":7.694,"profile_path":"/gY3zqmfv2kNYpQBnIgFormVU829.jpg","credit_id":"6634f7fbfe6c1801262fe26b","department":"Costume & Make-Up","job":"Makeup Designer"},{"adult":false,"gender":0,"id":1635162,"known_for_department":"Costume & Make-Up","name":"Sean Flanigan","original_name":"Sean Flanigan","popularity":1.769,"profile_path":"/fPwyDOkYb6UhO8VawfqNxTrYviM.jpg","credit_id":"6634fa8083ee67012d40e398","department":"Costume & Make-Up","job":"Hairstylist"},{"adult":false,"gender":0,"id":2010336,"known_for_department":"Art","name":"Martin Bell","original_name":"Martin Bell","popularity":1.008,"profile_path":null,"credit_id":"6635092dc9054f01338f3e8e","department":"Crew","job":"Visual Effects Art Director"},{"adult":false,"gender":2,"id":1669139,"known_for_department":"Sound","name":"Samson Neslund","original_name":"Samson Neslund","popularity":1.375,"profile_path":"/ijB0ydqIhpFz5J7IbNBMxLNEMbE.jpg","credit_id":"665853fbcd22f2f92e74dde1","department":"Sound","job":"Sound Designer"},{"adult":false,"gender":2,"id":1323295,"known_for_department":"Costume & Make-Up","name":"Graham Churchyard","original_name":"Graham Churchyard","popularity":3.665,"profile_path":"/xxRDb60lI0QX7tdxELT0gnvQtBg.jpg","credit_id":"6665e3df67854833cf9f396e","department":"Costume & Make-Up","job":"Costume Design"},{"adult":false,"gender":2,"id":1411839,"known_for_department":"Art","name":"William Groebe","original_name":"William Groebe","popularity":1.815,"profile_path":"/r9ygFRpbBSjonMSrIVn4cyv292e.jpg","credit_id":"6672230d0bd9d0ec5f34439c","department":"Art","job":"Storyboard Artist"},{"adult":false,"gender":2,"id":1458425,"known_for_department":"Sound","name":"Ryan Cole","original_name":"Ryan Cole","popularity":1.685,"profile_path":null,"credit_id":"66747e14ebdf53a68f9f747d","department":"Sound","job":"Supervising Sound Editor"},{"adult":false,"gender":2,"id":1352976,"known_for_department":"Crew","name":"Colin Follenweider","original_name":"Colin Follenweider","popularity":4.27,"profile_path":"/2n9hWyxthd6qPw3c3vxwXzwZWtn.jpg","credit_id":"6674b71216a3ced7f828d703","department":"Crew","job":"Stunt Coordinator"},{"adult":false,"gender":2,"id":3505013,"known_for_department":"Crew","name":"Marvin Berrembou","original_name":"Marvin Berrembou","popularity":2.377,"profile_path":"/s7uRgWET3heeIHjft82jKkLaIe8.jpg","credit_id":"6674b990b870fbaacd28d700","department":"Crew","job":"Stunts"},{"adult":false,"gender":0,"id":4786182,"known_for_department":"Crew","name":"Tom Buckley","original_name":"Tom Buckley","popularity":0.766,"profile_path":null,"credit_id":"6674ba6dab719201b74ebc35","department":"Crew","job":"Stunt Driver"},{"adult":false,"gender":2,"id":2244034,"known_for_department":"Crew","name":"Adrian Derrick-Palmer","original_name":"Adrian Derrick-Palmer","popularity":1.644,"profile_path":"/6lTrbZ7Vf19QNl3gJhkFoJ7vtS8.jpg","credit_id":"6674be7ae3cded16200f21b0","department":"Crew","job":"Stunts"},{"adult":false,"gender":2,"id":1502469,"known_for_department":"Crew","name":"Josh Dyer","original_name":"Josh Dyer","popularity":1.332,"profile_path":"/9qv3HhF8q6BAEpSoCJ3Np7mkxDI.jpg","credit_id":"66759664ed6c6cbb2db05487","department":"Crew","job":"Stunts"},{"adult":false,"gender":2,"id":95835,"known_for_department":"Sound","name":"Eric A. Norris","original_name":"Eric A. Norris","popularity":5.5,"profile_path":"/mksvxvfNqhFM8lsKSckosiOWYpq.jpg","credit_id":"667cc2b74e2b8fdc5078509b","department":"Sound","job":"Sound Designer"},{"adult":false,"gender":2,"id":1701154,"known_for_department":"Art","name":"Jeremy Simser","original_name":"Jeremy Simser","popularity":0.746,"profile_path":"/6VCbdDFTe9ogaSU3HlKM3MJIwV4.jpg","credit_id":"668ad22632c4084b8b159355","department":"Art","job":"Storyboard Artist"},{"adult":false,"gender":0,"id":141470,"known_for_department":"Lighting","name":"Wayne Shields","original_name":"Wayne Shields","popularity":1.619,"profile_path":null,"credit_id":"668d703d16552decc5f36544","department":"Lighting","job":"Gaffer"},{"adult":false,"gender":2,"id":81671,"known_for_department":"Crew","name":"Mark Strange","original_name":"Mark Strange","popularity":6.906,"profile_path":"/1oYGZnDhIHpJHonuCCwKSeTN1mR.jpg","credit_id":"668d91d76e82d482c61f6a4d","department":"Crew","job":"Stunts"},{"adult":false,"gender":0,"id":1502956,"known_for_department":"Crew","name":"Daniel Stevens","original_name":"Daniel Stevens","popularity":16.896,"profile_path":"/oJhASwyMincQlxf42aJn9khlt9Z.jpg","credit_id":"668d92a90293ab2aa81f6a80","department":"Crew","job":"Stunt Double"},{"adult":false,"gender":1,"id":2857602,"known_for_department":"Crew","name":"Ailís Smith","original_name":"Ailís Smith","popularity":1.04,"profile_path":null,"credit_id":"668d96a6381eee5eb5f369d4","department":"Crew","job":"Stunts"},{"adult":false,"gender":1,"id":2927525,"known_for_department":"Crew","name":"Lauriane Rouault","original_name":"Lauriane Rouault","popularity":0.413,"profile_path":null,"credit_id":"668d979a281b829e800d1dec","department":"Crew","job":"Stunts"},{"adult":false,"gender":2,"id":2752041,"known_for_department":"Crew","name":"Shane Roberts","original_name":"Shane Roberts","popularity":0.742,"profile_path":null,"credit_id":"668d982b1f11861a2832a64a","department":"Crew","job":"Stunts"},{"adult":false,"gender":2,"id":2441229,"known_for_department":"Crew","name":"Oleg Podobin","original_name":"Oleg Podobin","popularity":0.712,"profile_path":null,"credit_id":"668d98eb6ca04ed8da0d1af2","department":"Crew","job":"Stunts"},{"adult":false,"gender":1,"id":3352337,"known_for_department":"Crew","name":"Maureen Lavoyer","original_name":"Maureen Lavoyer","popularity":1.216,"profile_path":null,"credit_id":"668da1effdf0326f62659761","department":"Crew","job":"Stunts"},{"adult":false,"gender":2,"id":2770611,"known_for_department":"Crew","name":"Bogdan Kumšackij","original_name":"Bogdan Kumšackij","popularity":3.166,"profile_path":"/bJSkpkpRSbb7DgIVovxKu2cagN6.jpg","credit_id":"668da3781305a62731ae1192","department":"Crew","job":"Stunts"},{"adult":false,"gender":1,"id":4733517,"known_for_department":"Crew","name":"Ayesha Hussain","original_name":"Ayesha Hussain","popularity":0.001,"profile_path":"/7bChdeG2k7GoAf8nG12p05Ssrbe.jpg","credit_id":"668da6f8827c431542f49346","department":"Crew","job":"Stunts"},{"adult":false,"gender":1,"id":2309141,"known_for_department":"Crew","name":"Jessica Hooker","original_name":"Jessica Hooker","popularity":2.828,"profile_path":"/fCiomI2oFrpSVPTWdceVnny1z9d.jpg","credit_id":"668da8b5592385495dc30343","department":"Crew","job":"Stunts"},{"adult":false,"gender":2,"id":2846579,"known_for_department":"Crew","name":"Matthew Bell","original_name":"Matthew Bell","popularity":0.848,"profile_path":null,"credit_id":"668e9733d2c8b83ef70b65c0","department":"Crew","job":"Stunts"},{"adult":false,"gender":2,"id":8157,"known_for_department":"Sound","name":"Doc Kane","original_name":"Doc Kane","popularity":16.438,"profile_path":"/rJ12iE2gNd2TalhNXKbKH6Q3bKB.jpg","credit_id":"668e9ee11f11861a2832c7c7","department":"Sound","job":"ADR Mixer"},{"adult":false,"gender":2,"id":1849452,"known_for_department":"Crew","name":"Tony Christian","original_name":"Tony Christian","popularity":2.234,"profile_path":"/vQNmZWh5msxjOYbSn5ZkPVajfgF.jpg","credit_id":"66a0ea224194f9b3d7dd76f4","department":"Crew","job":"Stunts"},{"adult":false,"gender":2,"id":173658,"known_for_department":"Writing","name":"Len Wein","original_name":"Len Wein","popularity":16.439,"profile_path":"/jA38DskVXNIryKgPgc9Tc3GyaGH.jpg","credit_id":"66a1ec41d3e76bd5276fbb82","department":"Writing","job":"Characters"},{"adult":false,"gender":2,"id":1195199,"known_for_department":"Writing","name":"John Romita Sr.","original_name":"John Romita Sr.","popularity":8.318,"profile_path":"/n7YrfwwgHB3PjncCgAySv9R8vvS.jpg","credit_id":"66a1ec486aef695b11dd9cf7","department":"Writing","job":"Characters"},{"adult":false,"gender":2,"id":2817061,"known_for_department":"Writing","name":"Herb Trimpe","original_name":"Herb Trimpe","popularity":7.244,"profile_path":null,"credit_id":"66a1ec4fc4e63bdb74e0fcb6","department":"Writing","job":"Characters"},{"adult":false,"gender":2,"id":141359,"known_for_department":"Writing","name":"Roy Thomas","original_name":"Roy Thomas","popularity":12.916,"profile_path":"/2ZzN71BDvknZKTkIYmwNCa2uQMQ.jpg","credit_id":"66a1ec56b985e509a26e8553","department":"Writing","job":"Characters"},{"adult":false,"gender":0,"id":58910,"known_for_department":"Costume & Make-Up","name":"Geoff Redknap","original_name":"Geoff Redknap","popularity":1.937,"profile_path":"/7YkPrZLjVVOTQNXAgxgjzGRrzsP.jpg","credit_id":"66a1ed13657d3eb11da0cd35","department":"Costume & Make-Up","job":"Key Hair Stylist"},{"adult":false,"gender":0,"id":58910,"known_for_department":"Costume & Make-Up","name":"Geoff Redknap","original_name":"Geoff Redknap","popularity":1.937,"profile_path":"/7YkPrZLjVVOTQNXAgxgjzGRrzsP.jpg","credit_id":"66a1ed1ae296d3a52418ea10","department":"Costume & Make-Up","job":"Key Makeup Artist"},{"adult":false,"gender":2,"id":1459856,"known_for_department":"Costume & Make-Up","name":"Robb Crafer","original_name":"Robb Crafer","popularity":0.865,"profile_path":null,"credit_id":"66a1ed53f410fb5dd314dc18","department":"Costume & Make-Up","job":"Other"},{"adult":false,"gender":2,"id":2280082,"known_for_department":"Crew","name":"Alex Kyshkovych","original_name":"Alex Kyshkovych","popularity":5.952,"profile_path":"/nyy5o659Z1LfLl9ckRT1FiNop4U.jpg","credit_id":"66a1ed61f15568a11b024008","department":"Crew","job":"Stunt Double"},{"adult":false,"gender":1,"id":2769366,"known_for_department":"Crew","name":"Christina Petrou","original_name":"Christina Petrou","popularity":1.239,"profile_path":"/dC7JHx7Q9qKa4YqdCZVvqYTUTSP.jpg","credit_id":"66a1eda18dd96825c6266313","department":"Crew","job":"Stunts"},{"adult":false,"gender":2,"id":1891243,"known_for_department":"Crew","name":"Erol Ismail","original_name":"Erol Ismail","popularity":7.098,"profile_path":"/a8rZuQ3dZLgJGW5zWikNkdXBsz.jpg","credit_id":"66a1edbbe85279d0b3cf85d1","department":"Crew","job":"Stunts"},{"adult":false,"gender":2,"id":2151837,"known_for_department":"Crew","name":"James Cox","original_name":"James Cox","popularity":1.377,"profile_path":"/efxG7FKuE1jzfcoJlcBD37T5syJ.jpg","credit_id":"66a1eddf3c8e8b5b8c14d913","department":"Crew","job":"Stunts"},{"adult":false,"gender":2,"id":2752069,"known_for_department":"Crew","name":"Jonny James","original_name":"Jonny James","popularity":1.947,"profile_path":"/yNLcisY7ThsxzIP0Lj54OPB9rw9.jpg","credit_id":"66a1edee52d5b3412180f24e","department":"Crew","job":"Stunts"},{"adult":false,"gender":2,"id":2423284,"known_for_department":"Crew","name":"Billy Clements","original_name":"Billy Clements","popularity":4.369,"profile_path":"/nipJ22DXJBsdM1teQodwop42U6S.jpg","credit_id":"66a1f1afac556bd4f0023edc","department":"Crew","job":"Stunts"},{"adult":false,"gender":0,"id":4848517,"known_for_department":"Crew","name":"Henry Delaney","original_name":"Henry Delaney","popularity":0.325,"profile_path":null,"credit_id":"66a1f27ee746bc4fe1c8346c","department":"Crew","job":"In Memory Of"},{"adult":false,"gender":1,"id":1327030,"known_for_department":"Sound","name":"Lora Hirschberg","original_name":"Lora Hirschberg","popularity":8.277,"profile_path":"/gL4qn7THQn33BgSN2H4jRfuJJbU.jpg","credit_id":"66a2fc1d073923ad4918f9ab","department":"Sound","job":"Sound Re-Recording Mixer"},{"adult":false,"gender":0,"id":3618256,"known_for_department":"Visual Effects","name":"Lisa Marra","original_name":"Lisa Marra","popularity":3.079,"profile_path":null,"credit_id":"66a44a982fb83d5e35068c74","department":"Visual Effects","job":"Visual Effects Producer"},{"adult":false,"gender":2,"id":4857614,"known_for_department":"Acting","name":"Daniel Medina Ramos","original_name":"Daniel Medina Ramos","popularity":2.23,"profile_path":"/3ZmlKGTlBF09ZxmoOH9lB1xdsf2.jpg","credit_id":"66a96892428ab0c03ca373ca","department":"Crew","job":"Stunts"},{"adult":false,"gender":1,"id":4115448,"known_for_department":"Crew","name":"Jade Lye","original_name":"Jade Lye","popularity":7.279,"profile_path":"/4r1zrh8Wf32W74fltUn37Uz2FfV.jpg","credit_id":"66a96e621575dd985adab435","department":"Crew","job":"Stunts"},{"adult":false,"gender":0,"id":4858600,"known_for_department":"Crew","name":"Nilly Cetin","original_name":"Nilly Cetin","popularity":1.799,"profile_path":"/vLKWIjSztXEHUOMFolVudij4jbs.jpg","credit_id":"66a970d434ca74620f755604","department":"Crew","job":"Stunts"},{"adult":false,"gender":2,"id":2423287,"known_for_department":"Crew","name":"Eduardo Gago Muñoz","original_name":"Eduardo Gago Muñoz","popularity":4.782,"profile_path":"/r9DaaOfiACoUX7Ezs63K8DZrpHI.jpg","credit_id":"66a971bd17ba3ae460933acc","department":"Crew","job":"Stunts"},{"adult":false,"gender":0,"id":4858628,"known_for_department":"Crew","name":"Chloe Kibble","original_name":"Chloe Kibble","popularity":3.195,"profile_path":"/6jgp3IJenhe9R1cdV25gfzlSDpy.jpg","credit_id":"66a97562146f128153e3ac82","department":"Crew","job":"Stunts"},{"adult":false,"gender":0,"id":2151833,"known_for_department":"Crew","name":"Curtis Rowland Small","original_name":"Curtis Rowland Small","popularity":2.884,"profile_path":"/lgAOeihmiZ2CdKWpa35BxpBeSiK.jpg","credit_id":"66a9772bb271fff9d2a37260","department":"Crew","job":"Stunts"},{"adult":false,"gender":0,"id":4858668,"known_for_department":"Crew","name":"Jessica Walker","original_name":"Jessica Walker","popularity":3.9,"profile_path":"/5fZ41rVpPKI5VpBFt2dBRcOaHtL.jpg","credit_id":"66a979bf2bc64315b1b437ed","department":"Crew","job":"Stunts"}]

CastMovieData castMovieDataFromJson(String str) => CastMovieData.fromJson(json.decode(str));
String castMovieDataToJson(CastMovieData data) => json.encode(data.toJson());
class CastMovieData {
  CastMovieData({
      num? id, 
      List<Cast>? cast, 
      List<Crew>? crew,}){
    _id = id;
    _cast = cast;
    _crew = crew;
}

  CastMovieData.fromJson(dynamic json) {
    _id = json['id'];
    if (json['cast'] != null) {
      _cast = [];
      json['cast'].forEach((v) {
        _cast?.add(Cast.fromJson(v));
      });
    }
    if (json['crew'] != null) {
      _crew = [];
      json['crew'].forEach((v) {
        _crew?.add(Crew.fromJson(v));
      });
    }
  }
  num? _id;
  List<Cast>? _cast;
  List<Crew>? _crew;
CastMovieData copyWith({  num? id,
  List<Cast>? cast,
  List<Crew>? crew,
}) => CastMovieData(  id: id ?? _id,
  cast: cast ?? _cast,
  crew: crew ?? _crew,
);
  num? get id => _id;
  List<Cast>? get cast => _cast;
  List<Crew>? get crew => _crew;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    if (_cast != null) {
      map['cast'] = _cast?.map((v) => v.toJson()).toList();
    }
    if (_crew != null) {
      map['crew'] = _crew?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// adult : false
/// gender : 2
/// id : 934844
/// known_for_department : "Writing"
/// name : "Rob Liefeld"
/// original_name : "Rob Liefeld"
/// popularity : 8.311
/// profile_path : "/2WF4E4afbS2nCUNV3ksTGdouyvf.jpg"
/// credit_id : "5be4ba26c3a36810d20360c5"
/// department : "Writing"
/// job : "Characters"

Crew crewFromJson(String str) => Crew.fromJson(json.decode(str));
String crewToJson(Crew data) => json.encode(data.toJson());
class Crew {
  Crew({
      bool? adult, 
      num? gender, 
      num? id, 
      String? knownForDepartment, 
      String? name, 
      String? originalName, 
      num? popularity, 
      String? profilePath, 
      String? creditId, 
      String? department, 
      String? job,}){
    _adult = adult;
    _gender = gender;
    _id = id;
    _knownForDepartment = knownForDepartment;
    _name = name;
    _originalName = originalName;
    _popularity = popularity;
    _profilePath = profilePath;
    _creditId = creditId;
    _department = department;
    _job = job;
}

  Crew.fromJson(dynamic json) {
    _adult = json['adult'];
    _gender = json['gender'];
    _id = json['id'];
    _knownForDepartment = json['known_for_department'];
    _name = json['name'];
    _originalName = json['original_name'];
    _popularity = json['popularity'];
    _profilePath = json['profile_path'];
    _creditId = json['credit_id'];
    _department = json['department'];
    _job = json['job'];
  }
  bool? _adult;
  num? _gender;
  num? _id;
  String? _knownForDepartment;
  String? _name;
  String? _originalName;
  num? _popularity;
  String? _profilePath;
  String? _creditId;
  String? _department;
  String? _job;
Crew copyWith({  bool? adult,
  num? gender,
  num? id,
  String? knownForDepartment,
  String? name,
  String? originalName,
  num? popularity,
  String? profilePath,
  String? creditId,
  String? department,
  String? job,
}) => Crew(  adult: adult ?? _adult,
  gender: gender ?? _gender,
  id: id ?? _id,
  knownForDepartment: knownForDepartment ?? _knownForDepartment,
  name: name ?? _name,
  originalName: originalName ?? _originalName,
  popularity: popularity ?? _popularity,
  profilePath: profilePath ?? _profilePath,
  creditId: creditId ?? _creditId,
  department: department ?? _department,
  job: job ?? _job,
);
  bool? get adult => _adult;
  num? get gender => _gender;
  num? get id => _id;
  String? get knownForDepartment => _knownForDepartment;
  String? get name => _name;
  String? get originalName => _originalName;
  num? get popularity => _popularity;
  String? get profilePath => _profilePath;
  String? get creditId => _creditId;
  String? get department => _department;
  String? get job => _job;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['adult'] = _adult;
    map['gender'] = _gender;
    map['id'] = _id;
    map['known_for_department'] = _knownForDepartment;
    map['name'] = _name;
    map['original_name'] = _originalName;
    map['popularity'] = _popularity;
    map['profile_path'] = _profilePath;
    map['credit_id'] = _creditId;
    map['department'] = _department;
    map['job'] = _job;
    return map;
  }

}

/// adult : false
/// gender : 2
/// id : 10859
/// known_for_department : "Acting"
/// name : "Ryan Reynolds"
/// original_name : "Ryan Reynolds"
/// popularity : 181.416
/// profile_path : "/2Orm6l3z3zukF1q0AgIOUqvwLeB.jpg"
/// cast_id : 252
/// character : "Wade Wilson / Deadpool / Nicepool"
/// credit_id : "66a0eeb7fadd7c4c9c38207f"
/// order : 0

Cast castFromJson(String str) => Cast.fromJson(json.decode(str));
String castToJson(Cast data) => json.encode(data.toJson());
class Cast {
  Cast({
      bool? adult, 
      num? gender, 
      num? id, 
      String? knownForDepartment, 
      String? name, 
      String? originalName, 
      num? popularity, 
      String? profilePath, 
      num? castId, 
      String? character, 
      String? creditId, 
      num? order,}){
    _adult = adult;
    _gender = gender;
    _id = id;
    _knownForDepartment = knownForDepartment;
    _name = name;
    _originalName = originalName;
    _popularity = popularity;
    _profilePath = profilePath;
    _castId = castId;
    _character = character;
    _creditId = creditId;
    _order = order;
}

  Cast.fromJson(dynamic json) {
    _adult = json['adult'];
    _gender = json['gender'];
    _id = json['id'];
    _knownForDepartment = json['known_for_department'];
    _name = json['name'];
    _originalName = json['original_name'];
    _popularity = json['popularity'];
    _profilePath = json['profile_path'];
    _castId = json['cast_id'];
    _character = json['character'];
    _creditId = json['credit_id'];
    _order = json['order'];
  }
  bool? _adult;
  num? _gender;
  num? _id;
  String? _knownForDepartment;
  String? _name;
  String? _originalName;
  num? _popularity;
  String? _profilePath;
  num? _castId;
  String? _character;
  String? _creditId;
  num? _order;
Cast copyWith({  bool? adult,
  num? gender,
  num? id,
  String? knownForDepartment,
  String? name,
  String? originalName,
  num? popularity,
  String? profilePath,
  num? castId,
  String? character,
  String? creditId,
  num? order,
}) => Cast(  adult: adult ?? _adult,
  gender: gender ?? _gender,
  id: id ?? _id,
  knownForDepartment: knownForDepartment ?? _knownForDepartment,
  name: name ?? _name,
  originalName: originalName ?? _originalName,
  popularity: popularity ?? _popularity,
  profilePath: profilePath ?? _profilePath,
  castId: castId ?? _castId,
  character: character ?? _character,
  creditId: creditId ?? _creditId,
  order: order ?? _order,
);
  bool? get adult => _adult;
  num? get gender => _gender;
  num? get id => _id;
  String? get knownForDepartment => _knownForDepartment;
  String? get name => _name;
  String? get originalName => _originalName;
  num? get popularity => _popularity;
  String? get profilePath => _profilePath;
  num? get castId => _castId;
  String? get character => _character;
  String? get creditId => _creditId;
  num? get order => _order;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['adult'] = _adult;
    map['gender'] = _gender;
    map['id'] = _id;
    map['known_for_department'] = _knownForDepartment;
    map['name'] = _name;
    map['original_name'] = _originalName;
    map['popularity'] = _popularity;
    map['profile_path'] = _profilePath;
    map['cast_id'] = _castId;
    map['character'] = _character;
    map['credit_id'] = _creditId;
    map['order'] = _order;
    return map;
  }

}