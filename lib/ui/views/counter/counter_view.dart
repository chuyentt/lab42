import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lab42/ui/views/counter/counter_viewmodel.dart';
import 'package:stacked/stacked.dart';

class CounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// Kết hợp với ViewModel
    return ViewModelBuilder<CounterViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(title: Text(model.title)),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Image.network(model.myCounter.imgUrl),
              CachedNetworkImage(
                imageUrl: model.myCounter.imgUrl,
                progressIndicatorBuilder: (context, url,
                        downloadProgress) =>
                    CircularProgressIndicator(
                        value: downloadProgress.progress),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.redAccent,
                    ),
                    onPressed: () {
                      model.myCounter.increment();
                      model.notifyListeners();
                    },
                  ),
                  Text(
                    model.myCounter.counter.toString(),
                    style: TextStyle(
                      fontSize: 20,
                      // color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => CounterViewModel(),
    );
  }
}
