part of dash_chat;

class LoadEarlierWidget extends StatelessWidget {
  const LoadEarlierWidget({
    Key key,
    @required this.onLoadEarlier,
    @required this.defaultLoadCallback,
  }) : super(key: key);

  final Function onLoadEarlier;
  final Function(bool) defaultLoadCallback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onLoadEarlier != null) {
          onLoadEarlier();
          defaultLoadCallback(false);
        } else {
          defaultLoadCallback(false);
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 5.0,
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                spreadRadius: 1.0,
                blurRadius: 5.0,
                color: Color.fromRGBO(0, 0, 0, 0.2),
                offset: Offset(0, 10),
              )
            ]),
        child: Text(
          "查看之前消息",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
