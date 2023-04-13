class UserTestimonials {
  String name;
  String message;
  String profilePicture;

  UserTestimonials(this.message, this.name, this.profilePicture);
}

List<UserTestimonials> testimonials = [
  UserTestimonials(
      "Krypto is a great platform for trading, creating,\n and selling digital assets. The transaction speeds are\n incredibly fast and reliable, and the fees are comparatively low.\n The user interface is also very intuitive and easy to use.\n I've been using Krypto for a few months now, and it's never let me down! Highly recommended!",
      'OLIVIA COLE',
      'assets/images/female.png'),
  UserTestimonials(
      "I've been using Krypto for a few months now and it's been an absolute pleasure. It's reliable, fast transactions and free large NFT marketplace make it the perfect platform for buying and selling digital assets. On top of that, its user-friendly interface makes it easy to navigate — even someone with no tech experience can use it! Highly recommended! ",
      "David Clay",
      "assets/images/male.png"),
  UserTestimonials(
      "I'm really impressed with Krypto! They offer reliable and fast transactions a free large NFT marketplace, and their interface is so easy to use. ",
      "Jessica Eden",
      "assets/images/male.png"),
];
