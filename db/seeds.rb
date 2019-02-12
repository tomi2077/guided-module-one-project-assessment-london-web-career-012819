Patient.delete_all
Medicine.delete_all
Nurse.delete_all
Review.delete_all

Nurse.create([{name: Faker::Name.name},
  {name: Faker::Name.name},
  {name: Faker::Name.name},
  {name: Faker::Name.name},
  {name: Faker::Name.name},
  {name: Faker::Name.name},
  {name: Faker::Name.name},
  {name: Faker::Name.name},
  {name: Faker::Name.name},
  {name: Faker::Name.name},
  {name: Faker::Name.name},
  {name: Faker::Name.name},
  {name: Faker::Name.name},
  {name: Faker::Name.name},
  {name: Faker::Name.name},
  {name: Faker::Name.name},
  {name: Faker::Name.name}])

Patient.create([{name: Faker::Name.name,  nurse_id: 1},
  {name: Faker::Name.name,  nurse_id: 2},
  {name: Faker::Name.name,  nurse_id: 3},
  {name: Faker::Name.name,  nurse_id: 4},
  {name: Faker::Name.name,  nurse_id: 5},
  {name: Faker::Name.name,  nurse_id: 6},
  {name: Faker::Name.name,  nurse_id: 7},
  {name: Faker::Name.name,  nurse_id: 8},
  {name: Faker::Name.name,  nurse_id: 9},
  {name: Faker::Name.name,  nurse_id: 10},
  {name: Faker::Name.name,  nurse_id: 11},
  {name: Faker::Name.name,  nurse_id: 12},
  {name: Faker::Name.name,  nurse_id: 13},
  {name: Faker::Name.name,  nurse_id: 14},
  {name: Faker::Name.name,  nurse_id: 15},
  {name: Faker::Name.name,  nurse_id: 16},
  {name: Faker::Name.name,  nurse_id: 17},
  {name: Faker::Name.name,  nurse_id: 16},
  {name: Faker::Name.name,  nurse_id: 15},
  {name: Faker::Name.name,  nurse_id: 14},
  {name: Faker::Name.name,  nurse_id: 13},
  {name: Faker::Name.name,  nurse_id: 12},
  {name: Faker::Name.name,  nurse_id: 11},
  {name: Faker::Name.name,  nurse_id: 10},
  {name: Faker::Name.name,  nurse_id: 9},
  {name: Faker::Name.name,  nurse_id: 8},
  {name: Faker::Name.name,  nurse_id: 7},
  {name: Faker::Name.name,  nurse_id: 6},
  {name: Faker::Name.name,  nurse_id: 5},
  {name: Faker::Name.name,  nurse_id: 4}
  ])

Nurse.create([{name: Faker::Name.name},
  {name: Faker::Name.name},
  {name: Faker::Name.name},
  {name: Faker::Name.name},
  {name: Faker::Name.name},
  {name: Faker::Name.name},
  {name: Faker::Name.name},
  {name: Faker::Name.name},
  {name: Faker::Name.name},
  {name: Faker::Name.name},
  {name: Faker::Name.name},
  {name: Faker::Name.name},
  {name: Faker::Name.name},
  {name: Faker::Name.name},
  {name: Faker::Name.name},
  {name: Faker::Name.name},
  {name: Faker::Name.name}])

Review.create([{review_message: "Lorem ipsum dolor sit amet.",medicine_id:1, patient_id:1},
  {review_message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",medicine_id:2, patient_id:2},
  {review_message: "Proin ac lacus a eros accumsan interdum ac quis felis.", medicine_id:3, patient_id:3},
  {review_message: "Cras nec augue non leo viverra malesuada.", medicine_id:4, patient_id:4},
  {review_message: "Phasellus a odio id augue iaculis porttitor non sit.", medicine_id:5, patient_id:5},
  {review_message: "Morbi quis ipsum sit amet sapien accumsan pellentesque.", medicine_id:6, patient_id:6},
  {review_message: "Donec eget arcu ullamcorper, feugiat nisl a, varius diam.", medicine_id:7, patient_id:7},
  {review_message: "Suspendisse condimentum libero quis turpis suscipit con.", medicine_id:8, patient_id:8},
  {review_message: "Curabitur porttitor enim vel lectus sollicitudin, qui.", medicine_id:9, patient_id:9},
  {review_message: "Etiam vel ex sit amet mi rhoncus consectetur vestibulum.", medicine_id:10, patient_id:10},
  {review_message: "Nulla a libero ac ligula laoreet consectetur non sit amet.", medicine_id:11, patient_id:11},
  {review_message: "Phasellus at magna at orci ornare dictum vel vitae sem.", medicine_id:12, patient_id:12},
  {review_message: "Quisque eget erat ut mi elementum mattis ut ut felis.", medicine_id:13, patient_id:13},
  {review_message: "Curabitur ullamcorper massa id ex ultrices blandit.", medicine_id:14, patient_id:14},
  {review_message: "Maecenas vel dui pulvinar, efficitur elit non, placerat leo.", medicine_id:15, patient_id:15},
  {review_message: "Vestibulum id massa pellentesque, commodo urna vel, molesti.", medicine_id:16, patient_id:16},
  {review_message: "Phasellus a odio id augue iaculis porttitor non sit amet risus.", medicine_id:17, patient_id:17},
  {review_message: "Vestibulum id massa pellentesque, commodo urna vel, molestie risus.", medicine_id:18, patient_id:18}
  ])

  Medicine.create([{name: "Apixibucil", patient_id: 1, review_id: 17, nurse_id: 2},
  {name: "Adriacilin", patient_id: 1, review_id: 17, nurse_id: 12},
  {name: "Somasulin", patient_id: 4, review_id: 2, nurse_id: 17},
  {name: "Alcaftonin", patient_id: 6, review_id: 7, nurse_id: 10},
  {name: "Pulmocilin", patient_id: 9, review_id: 9, nurse_id: 9},
  {name: "Afalinum", patient_id: 22, review_id: 13, nurse_id: 1},
  {name: "Acamkyn Thioderall", patient_id: 14, review_id: 1, nurse_id: 15},
  {name: "Arapan Empifenide", patient_id: 6, review_id: 18, nurse_id: 16},
  {name: "Dactinine Macrotaine", patient_id: 27, review_id: 4, nurse_id: 5},
  {name: "Alimcerol Epinethasone", patient_id: 1, review_id: 8, nurse_id: 7},
  {name: "Alglucoroban", patient_id: 25, review_id: 15, nurse_id: 11},
  {name: "Butabital", patient_id: 11, review_id: 6, nurse_id: 12},
  {name: "Altozyme", patient_id: 19, review_id: 8, nurse_id: 16},
  {name: "Hemadox", patient_id: 12, review_id: 12, nurse_id: 3},
  {name: "Naveltone", patient_id: 10, review_id: 17, nurse_id: 8},
  {name: "Eprothasol", patient_id: 4, review_id: 5, nurse_id: 9},
  {name: "Unidizem Ambegestrel", patient_id: 8, review_id: 4, nurse_id: 13},
  {name: "Alfevelam Aprenone", patient_id: 30, review_id: 18, nurse_id: 9},
  {name: "Acetylnovate Novalapril", patient_id: 7, review_id: 6, nurse_id: 15},
  {name: "Tacropine Alogsonide", patient_id: 9, review_id: 3, nurse_id: 2},
  {name: "Tiaferol", patient_id: 16, review_id: 11, nurse_id: 17}
  ])
