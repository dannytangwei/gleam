/*
 * @Author: gaoyong06@qq.com
 * @Date: 2020-11-20 14:08:23 
 * @Last Modified by: gaoyong06@qq.com
 * @Last Modified time: 2020-11-20 14:08:23
 */

import 'package:flutter/material.dart';
import 'package:gleam/gleam.dart';
import 'package:gleam/style/style.dart';
import 'package:gleam_example/widgets/cell_group_title.dart';

/// TagPage标签示例程序
class CellPage extends StatefulWidget {
  CellPage({Key key}) : super(key: key);

  @override
  _CellPageState createState() => _CellPageState();
}

class _CellPageState extends State<CellPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF7F8FA),
      appBar: AppBar(
        title: Text(
          "Cell 单元格",
          style: Style.ts_FFFFFF_18_bold,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CellGroupTitle(title: "基础用法"),
            CellGroup(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 16.0),
              border: false,
              backgroundColor: Color(0XFFFFFFFF),
              children: [
                Cell(
                  title: '单元格',
                  value: '内容',
                ),
                Cell(
                  title: '单元格',
                  value: '内容',
                  label: '描述信息',
                  divider: null,
                ),
              ],
            ),

            //TODO:
            CellGroupTitle(title: "单元格大小"),
            CellGroup(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 16.0),
              border: false,
              backgroundColor: Color(0XFFFFFFFF),
              children: [
                Cell(
                  title: '单元格',
                  value: '内容',
                ),
                Cell(
                  title: '单元格',
                  value: '内容',
                  label: '描述信息',
                  divider: null,
                ),
              ],
            ),

            CellGroupTitle(title: "展示图标"),
            CellGroup(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 16.0),
              border: false,
              backgroundColor: Color(0XFFFFFFFF),
              children: [
                Cell(
                  icon: Icon(
                    Icons.location_on_outlined,
                    size: 18,
                    color: Color(0XFF323233),
                  ),
                  title: '单元格',
                  value: '内容',
                ),
              ],
            ),

            CellGroupTitle(title: "只设置value"),
            CellGroup(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 16.0),
              border: false,
              backgroundColor: Color(0XFFFFFFFF),
              children: [
                Cell(
                  value: '内容',
                ),
              ],
            ),

            CellGroupTitle(title: "展示箭头"),
            CellGroup(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 16.0),
              border: false,
              backgroundColor: Color(0XFFFFFFFF),
              children: [
                Cell(
                  title: '单元格',
                  value: '内容',
                ),
                Cell(
                  title: '单元格',
                  value: '内容',
                ),
                Cell(
                  title: '单元格',
                  value: '内容',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
