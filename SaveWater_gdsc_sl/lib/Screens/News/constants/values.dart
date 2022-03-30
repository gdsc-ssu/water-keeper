import 'package:savewater_gdsc_sl/Screens/News/models/category.dart';
import 'package:savewater_gdsc_sl/Screens/News/models/news.dart';

class StaticValues {
  List<News> news = [
    News(
        title:
            "Manatee County Utilities customers \nurged to save water",
        descrption:
            "MANATEE COUNTY, Fla. (WWSB) - Leaders with the Manatee County Utilities Department (MCUD) want to remind residents of the importance of conserving water during Florida’s “Dry Season”.Water conservation is especially important this year due to warmer-than-normal temperatures and drier-than-normal weather conditions along with ongoing construction at the county’s water treatment plant.Increased usage results in an increased demand on the water system, which can result in lower water pressure. By conserving water wherever possible, the system is better able to meet demand. In cooperative efforts, MCUD has worked with the fire departments, wholesale customers, and the largest users of water to promote conservation. All customers’ conservation efforts are vital -- playing an important role in ensuring the most efficient operation of the water system.",
        image:
            "https://gray-wwsb-prod.cdn.arcpublishing.com/resizer/6uXhU9eDkEufQmLtVZCUJ1ztIH8=/1200x675/smart/filters:quality(85)/cloudfront-us-east-1.images.arcpublishing.com/gray/WU4RLKEFSZC2NA6VBSCOWAZTGM.bmp",
        source: "Your Local Station",
        sourceImage:
            "https://yt3.ggpht.com/ytc/AAUvwngucVKXeH6T2_0PfZbyB2XJ3Toff5CfTnZ1alshs_4=s900-c-k-c0x00ffffff-no-rj",
        time: "Today, 8:28 AM"),
    News(
        title:
            "With no respite from drought, officials \ncall upon Californians to conserve \nwater",
        image:
            "https://scx1.b-cdn.net/csz/news/800a/2019/2-water.jpg",
        source: "Save Water",
        sourceImage: "https://static.toiimg.com/photo/47529300.cms",
        time: "3 Days Ago",
        descrption:
            "The start of this year has been the driest in California's history. With the severe drought now in a third year, the state faces depleted reservoirs, a meager snowpack in the Sierra Nevada and a worsening water shortage on the Colorado River. Under sunny blue skies in Sacramento, where it hasn't rained in two months, officials stood Thursday in front of a mulch-covered garden and appealed for Californians to save water."),
    News(
        title: "World Water Day",
        image:
            "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/world-water-day-awareness-campaign-instagram-design-template-ec9639121efc770acc8a82a13d1daeca_screen.jpg?ts=1582173641",
        source: "World Water",
        sourceImage:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYl2TxpCA39qFBqA2U2vVYj005OIalFxAwkg&usqp=CAU",
        time: "4 Days Ago",
        descrption:
            "Campaigns around the world to save water. Everyone, participate!")
  ];

  List<Category> categories = [
    Category(
      name: "All",
    ),
    Category(
      name: "News",
    ),
    Category(
      name: "Campaign",
    ),
    Category(
      name: "Donation",
    ),
    Category(
      name: "Volunteer Work",
    ),
  ];
}
