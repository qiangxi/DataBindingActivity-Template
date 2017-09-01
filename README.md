# DataBindingActivity-Template
Android Studio DataBinding 模板

##### 该项目是一个Android Studio模板，用来生成DataBinding 样式的模板代码：  
### DataBindingActivity
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
### DataBindingLayoutTemplate
DataBindingLayoutTemplate文件夹下是一个文本文件，里面存放着dataBinding风格的布局文件代码，添加该模板的原因如下：  
> DataBindingActivity模板是用来新建activity时**同时**生成activity代码和layout代码的，但是有时候我们只是编写一个layout布局文件，最典型的使用情景就是在创建dialog或adapter时，只需要编写布局文件，此时DataBindingLayoutTemplate就派上用场了。

DataBindingLayoutTemplate的用法很简单：
1. Setting -> File and Code Templates -> File 中新增一个模板并命名，比如DataBindingTemp。
2. 把DataBindingLayoutTemplate文件夹下的文件文件中的内容拷贝并粘贴到DataBindingTemp中
3. 点击‘保存’。
4. 在layout文件夹上右键即可看到新增的模板DataBindingTemp，点击使用即可。

具体见下图：
![](https://github.com/qiangxi/ImageLib/blob/master/Image/DataBindingTemp05.png?raw=true)  

![](https://github.com/qiangxi/ImageLib/blob/master/Image/DataBindingTemp06.png?raw=true)
