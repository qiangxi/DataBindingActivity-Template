# DataBindingActivity-Template
Android Studio DataBinding 模板

##### 该项目是一个Android Studio模板，用来生成DataBinding 样式的模板代码：  
##### 集成步骤 ：
1. 把项目下载到本地
2. 把DataBindingActivity整个项目拷贝到`${Android Studio安装目录}\plugins\android\lib\templates\activities`中
3. 重启Android Studio即可使用

##### 使用方式：
New -> Activity -> DataBinding Activity,具体见下图：

![图1](https://github.com/qiangxi/ImageLib/blob/master/Image/DataBindingTemp03.png?raw=true)

##### 模板样式：
- 创建面板  

![图2](https://github.com/qiangxi/ImageLib/blob/master/Image/DataBindingTemp01.png?raw=true)

- 创建后的activity代码示例  

```java
import android.databinding.DataBindingUtil;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

import com.qiangxi.annotationsample.R;

public class DataBindingActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        DataBindingUtil.setContentView(this, R.layout.activity_data_binding);
    }
}

```
- 创建后的layout代码示例  

```xml
<?xml version="1.0" encoding="utf-8"?>
<layout xmlns:android="http://schemas.android.com/apk/res/android"
        xmlns:app="http://schemas.android.com/apk/res-auto">

    <data>

    </data>

    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:orientation="vertical">

    </LinearLayout>
</layout>
```
