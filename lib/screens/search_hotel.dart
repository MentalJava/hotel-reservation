import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hotel_reservation/controllers/search_hotel_controller.dart';

class SearchHotel extends StatelessWidget {
  final SearchHotelController searchHotelController =
      Get.put(SearchHotelController());

  SearchHotel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          'Search',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListView(
              shrinkWrap: true,
              children: [
                Obx(
                  () => ExpansionPanelList(
                    expansionCallback: (int index, bool isExpanded) {
                      if (index == 0) {
                        searchHotelController.isOpenPanel();
                      } else if (index == 1) {
                        searchHotelController.isDatePanel();
                      }
                    },
                    children: [
                      ExpansionPanel(
                        headerBuilder: (context, isExpanded) {
                          return const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 10,
                                  right: 70,
                                ),
                                child: Text(
                                  'Filter',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text(
                                'selecte filters',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          );
                        },
                        body: Obx(
                          () => Column(
                            children: searchHotelController.filters.keys
                                .map((filter) => CheckboxListTile(
                                      title: Text(filter),
                                      value:
                                          searchHotelController.filters[filter],
                                      onChanged: (bool? value) {
                                        searchHotelController
                                            .toggleFilter(filter);
                                      },
                                    ))
                                .toList(),
                          ),
                        ),
                        isExpanded: searchHotelController.isOpen.value,
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 50,
                    left: 10,
                    bottom: 10,
                  ),
                  child: Text(
                    'Date',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Obx(
                  () => ListTile(
                    title: const Text('📅Check-in'),
                    subtitle: Text(
                      searchHotelController.formattedCheckInDate,
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    trailing: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      width: 150,
                      height: 30,
                      child: const Center(
                        child: Text(
                          'select date',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: searchHotelController.checkInDate.value,
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100),
                      );
                      if (pickedDate != null) {
                        searchHotelController.setCheckInDate(pickedDate);
                      }
                    },
                  ),
                ),
                Obx(
                  () => ListTile(
                    title: const Text('📅Check-out'),
                    subtitle: Text(
                      searchHotelController.formattedCheckOutDate,
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    trailing: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(187, 222, 251, 1),
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      width: 150,
                      height: 30,
                      child: const Center(
                        child: Text(
                          'select date',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: searchHotelController.checkOutDate.value,
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100),
                      );
                      if (pickedDate != null) {
                        searchHotelController.setCheckOutDate(pickedDate);
                      }
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: const WidgetStatePropertyAll(Colors.blue),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                minimumSize: const WidgetStatePropertyAll(
                  Size(150, 55),
                ),
              ),
              onPressed: () {
                Get.dialog(
                  AlertDialog(
                    shape: const LinearBorder(),
                    titlePadding: EdgeInsets.zero,
                    title: Container(
                      height: 110,
                      decoration: const BoxDecoration(color: Colors.blue),
                      child: const Center(
                        child: Text(
                          'Please check\nyour choice :)',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    content: SizedBox(
                      height: 170,
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.filter_list_sharp,
                              color: Colors.blue[200],
                            ),
                            title: Text(
                              searchHotelController.selectedFilters.join(' / '),
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.date_range,
                              color: Colors.blue[200],
                            ),
                            title: const Text(
                              'IN',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            trailing: Text(
                              searchHotelController.formattedCheckInDate,
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.date_range,
                              color: Colors.blue[200],
                            ),
                            title: const Text(
                              'OUT',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            trailing: Text(
                              searchHotelController.formattedCheckOutDate,
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    actions: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    const WidgetStatePropertyAll(Colors.blue),
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                minimumSize: const WidgetStatePropertyAll(
                                  Size(100, 40),
                                ),
                              ),
                              onPressed: () => Get.back(),
                              child: const Text(
                                'Search',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    const WidgetStatePropertyAll(Colors.grey),
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                minimumSize: const WidgetStatePropertyAll(
                                  Size(100, 40),
                                ),
                              ),
                              onPressed: () => Get.back(),
                              child: const Text(
                                'Cancel',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
              child: const Text(
                'Search',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
