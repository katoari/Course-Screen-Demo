import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


class CourseDetailScreen extends StatelessWidget {
  const CourseDetailScreen({Key? key}) : super(key: key);

  Widget _buildStars(int rate) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          index < rate ? Icons.star : Icons.star_border, color: Colors.amber,
          size: 20,
        );
      }),
    );
  }

  Widget _buildIconClose(){
    return   InkWell(
      child: Container(
          padding: const EdgeInsets.all(4.0),
          decoration: const BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.clear,
            color: Colors.white,
            size: 23,
          )),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "TEST REVIEW",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                _buildIconClose()
              ],
            ),
            const Text(
              "Sept. 9 2020",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 32,
                color: Color(0XFFFF002E),
              ),
            ),
            const SizedBox(height: 10,),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: const Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                    "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
                    "when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
                    "It has survived not only five centuries, but also the leap into electronic typesetting,"
                    " remaining essentially unchanged. "
                    "It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,"
                    " and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                overflow: TextOverflow.ellipsis,
                maxLines: 7,
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16
                ),

              ),
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const Text(
                      "PRICE",
                      style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 1,
                          color: Colors.black54
                      ),
                    ),
                    Row(
                      children: const [
                        Text(
                          "P",
                          style: TextStyle(
                            fontSize: 12,
                            height: 0.5,
                          ),
                        ),
                        Text(
                          "5,500",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 4,
                  height: MediaQuery.of(context).size.height / 20,
                  decoration: BoxDecoration(
                      color: const Color(0XFFFF007C),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: TextButton(
                    onPressed: (){},
                    child: const Text(
                      "Enroll",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20,),

            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 1, color: Colors.grey),
                    bottom: BorderSide(width: 1, color: Colors.grey),
                  )
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Wrap(
                          spacing: 15,
                          children: const [
                            Icon(
                              Icons.groups_outlined,
                              size: 45,
                            ),
                            Text(
                              "18/40",
                              style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.bold

                              ),
                            ),
                          ]
                      ),
                    ],
                  ),
                  const Text(
                    "students are currently enrolled",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: (){},
                  child: Row(
                    children: const [
                      Text(
                        "Reviews",
                        style: TextStyle(
                          color: Color(0XFFFF002E),
                          fontSize: 18,
                        ),
                      ),
                      Icon(
                        Icons.chevron_right_outlined,
                        color: Color(0XFFFF002E),
                        size: 30,
                      ),
                    ],
                  ),
                ),
                TextButton(
                    onPressed: (){},
                    child: const Text(
                      "Write a Review",
                      style: TextStyle(
                        color: Color(0XFFFF002E),
                        fontSize: 18,
                      ),
                    )
                )

              ],
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 2.0,
                    ),
                  ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Would recommend! I am...",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      Text(
                        "6/12/2020",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0, bottom: 6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildStars(5),
                        const Text(
                          "Steven R.",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: const Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                          " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          height: 1.4
                      ),
                    ),
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
