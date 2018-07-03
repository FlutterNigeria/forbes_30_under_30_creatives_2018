class Celebrity {
  final String id;
  final String name;
  final String age;
  final String country;
  final String profession;
  final String description;
  final String profileImage;

  Celebrity({
    this.id,
    this.name,
    this.age,
    this.country,
    this.profession,
    this.description,
    this.profileImage,
  });
}

List<Celebrity> celebrities = <Celebrity>[
  Celebrity(
    id: "01",
    name: "Thuso Mbedu",
    age: "25",
    country: "South Africa",
    profession: "Actress",
    profileImage: "assets/images/01.jpeg",
    description:
        "This Wits graduate raised South Africa’s flag high when nominated in the ‘Best Performance by an Actress’ category at the 2017 International Emmy Awards, for her role as Winnie on Mzansi Magic’s TV drama, Is’thunzi. She made her on-screen debut in 2014 in the Mzansi Magic drama series, Saints and Sinners."
        "In 2014, she had a small recurring role in yet another Mzansi Magic soap Isibaya, before landing her a high-profile role as journalism student and wild child Kitso on local soap Scandal! Mbedu has also starred as Ipeleng in the international TV series MTV Shuga."
        "Under the mentorship of Amanda Lane, one of South Africa’s greatest writers and directors, she is currently working on developing a feature film funded by the KZN Film Commission."
        "Furthermore, I am editing the script of a series I wrote called iDRIVE. iDRIVE, a crime action series set in the digital space. It is fast-paced and thought-provoking and I was fortunate to film the pilot in April with money I received from my role as Ipeleng in MTV Shuga."
        "She has also made her first international debut on the Danish TV series Liberty. It seems there is no stopping her.",
  ),
  Celebrity(
    id: "02",
    name: "Maria Borges",
    age: "25",
    country: "Angola",
    profession: "Supermodel",
    profileImage: "assets/images/02.jpg",
    description:
        "This Angolan beauty was the first-ever model to walk the Victoria’s Secret annual show in her Afro. Borges was born during Angola’s civil war. At age 11, her mother died. She was raised by her sister only five years her senior. Borges started modelling for a living. She took part in the ‘Elite Model Look Angola’ competition in 2010 and grabbed the attention of a local model scout who placed her in an overseas agency. With dreams of following in the footsteps of her idol, Naomi Campbell, it wasn’t long before she started making waves on the streets of New York. She booked 17 shows in her first New York Fashion Week season and became a Givenchy exclusive in her second season. She has also walked the runway for Tom Ford, Balmain, Dior, Giorgio Armani, Versace, Oscar de la Renta and Ralph Lauren. In 2016, she became a global ambassador for L’Oréal.",
  ),
  Celebrity(
    id: "03",
    name: "Herieth Paul",
    age: "22",
    country: "Tanzania",
    profession: "Supermodel",
    profileImage: "assets/images/03.jpg",
    description:
        "Paul was discovered at an open call at Angie’s AMTI, a model agency in Canada. She signed with Women Management New York in 2010 and was on the runway to success from there. She has appeared in Vogue Italia, where she was a cover star, i-D, Wonderland and Teen Vogue. She was one of three models in the Tom Ford Fall/Winter 2013 campaign, photographed by the designer himself. She also walked the coveted Victoria’s Secret Fashion Show not once but twice, and has joined the likes of supermodels Gigi Hadid and Jourdan Dunn as the face of Maybelline.",
  ),
  Celebrity(
    id: "04",
    name: "Eddy Kamuanga",
    age: "26",
    country: "DRC",
    profession: "Painter",
    profileImage: "assets/images/04.jpg",
    description:
        "Kamuanga Illunga’s work is thought-provoking and tells stories about the Congolese nation’s past, present and future. He explores shifts in the economic, political and social identity of the DRC since colonialization.\n"
        "Besides Africa, the contemporary artist has exhibited his works in galleries across the world, including the Saatchi Gallery in London, the Birmingham Museum and Art Gallery, the Royal Academy of Arts in London and the Fowler Museum in Los Angeles. His work is also included in several important collections. Business mogul Charles Saatchi resold one of Kamuanga Illunga’s paintings for \$93,000. His paintings cost an average of \$45,000 each..",
  ),
  Celebrity(
    id: "05",
    name: "Cassper Nyovest",
    age: "27",
    country: "South Africa",
    profession: "Rapper, Entrepreneur",
    profileImage: "assets/images/05.jpg",
    description:
    "Cassper Nyovest, born Refiloe Maele Phoolo, loved performing before huge crowds while in primary school, where he fought to be on every play and show. Inspired by his late brother, Khotso Motebang Phoolo, who was also a rapper, Nyovest signed a record deal with Impact Sounds at just 17 years old. He produced hits like Gusheshe, Malome and Mama I Made It. He has shared the stage with international artists Kid Cudi, Kendrick Lamar, Nas, Wizkid and Wiz Khalifa.\n"
    "The rapper also started his own record label, Family Tree, the same year he released his debut album, Tsholofelo. His string of awards include the 2015 MTV African Music Awards Winner: Best African Hip Hop Act, 2015 African Music Awards Winner: Best Sothern Africa Male Artist & Best African Hip Hop Award.\n"
    "On October 31, 2015, Nyovest made history by becoming the -first African artiste to sell out Ticketpro Dome, a venue in Johannesburg. He is a 2018 nominee for the BET Best International Act Award.",
  ),
];
