part of 'widget.dart';

class SeatItem extends StatelessWidget {
  // NOTE: 0 = available, 1 = selected, 2 = Unavailable

  final bool isAvailable;
  final String id;
  const SeatItem({Key? key, required this.id, this.isAvailable = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.watch<SeatCubit>().isSelected(id);

    color() {
      if (!isAvailable) {
        return unavailableColor;
      } else {
        if (isSelected) {
          return primaryColor;
        } else {
          return secondColor;
        }
      }
    }

    borderColor() {
      if (!isAvailable) {
        return unavailableColor;
      } else {
        return primaryColor;
      }
    }

    child() {
      if (isSelected) {
        return Center(
          child: Text(
            id,
            style: whiteTextStyle.copyWith(fontWeight: semiBold),
          ),
        );
      } else {
        return SizedBox();
      }
    }

    return GestureDetector(
      onTap: () {
        if (isAvailable) {
          context.read<SeatCubit>().selectSeat(id);
        }
      },
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
            color: color(),
            borderRadius: BorderRadius.circular(18),
            border: Border.all(width: 2, color: borderColor())),
        child: child(),
      ),
    );
  }
}
