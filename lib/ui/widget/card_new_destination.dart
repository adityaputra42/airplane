part of 'widget.dart';

class CardNewDestination extends StatelessWidget {
  final DestinationModel destination;
  const CardNewDestination(
    this.destination, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailPage(destination)));
      },
      child: Container(
        width: 280,
        height: 90,
        margin: EdgeInsets.only(bottom: 2, top: 2),
        padding: EdgeInsets.fromLTRB(5, 5, 0, 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            boxShadow: [
              BoxShadow(spreadRadius: 1, blurRadius: 1, color: Colors.black12)
            ]),
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Container(
                    width: 70,
                    height: 80,
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                            image: NetworkImage(destination.imageUrl),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 120,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          destination.name,
                          overflow: TextOverflow.ellipsis,
                          style: blacTextStyle.copyWith(
                              fontWeight: medium, fontSize: 18),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          destination.city,
                          style: greyTextStyle.copyWith(
                            fontWeight: light,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 40,
              width: 50,
              padding: EdgeInsets.only(right: 5),
              decoration: BoxDecoration(
                  color: greyColor.withOpacity(0.25),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star_rounded,
                    color: Colors.amber,
                    size: 20,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    destination.rate.toString(),
                    style: blacTextStyle.copyWith(fontWeight: medium),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
