import 'package:flutter/material.dart';
import 'package:flutter_ui_3/constants.dart';
import 'package:flutter_ui_3/model/user_post_model.dart';

class UserPost extends StatelessWidget {
  const UserPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // list all post using column
    return Column(children: [
      for (var post in posts) postListItem(post),
    ]);

    // list all post using ListView.builder
    /*return ListView.builder(
         shrinkWrap: true,
         physics: const NeverScrollableScrollPhysics(),
         itemCount: posts.length,
         itemBuilder: (context, index) {
           return postListItem(posts[index]);
      });*/
  }

  Padding postListItem(Post post) {
    return Padding(
      padding: const EdgeInsets.only(
          top: defaultMargin, left: defaultMargin * 2, bottom: defaultMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          postImageWidget(post.postImagePath),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      post.postTitle,
                      style: const TextStyle(
                          color: postTitleTxtColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    likeAndCommentWidget(
                        Icons.comment_outlined, post.totalComment),
                    const SizedBox(
                      width: defaultMargin,
                    ),
                    likeAndCommentWidget(Icons.favorite_outline, post.totalLike)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Row likeAndCommentWidget(IconData icon, int total) {
    return Row(
      children: [
        Icon(
          icon,
          size: 20,
          color: postTitleTxtColor,
        ),
        const SizedBox(width: defaultMargin / 2),
        Text(
          "$total",
          style: const TextStyle(
              color: postTitleTxtColor,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
      ],
    );
  }

  ClipRRect postImageWidget(String postImage) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50), bottomLeft: Radius.circular(50)),
      child: Image.network(
        postImage,
        height: 200,
        fit: BoxFit.cover,
      ),
    );
  }
}
