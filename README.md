# Blog_picture01
图床

输入：

```shell
git add .

git commit -m "更新图片"

git push
```



# 1.图片转发

- 转发前的网址：

  ```
  https://github.com/silent-wuhen/Blog_picture01/blob/main/3.文档图片/6.机器学习/2.李宏毅/003.png?raw=true
  ```

- 转发后的网址

  ```
  https://cdn.jsdelivr.net/gh/silent-wuhen/Blog_picture01/3.文档图片/6.机器学习/2.李宏毅/001.png?raw=true
  ```

- 替换脚本

  ```shell
  #!/bin/bash
  
  # 参数1
  md_file_path="D:/study/H03_其他/1.English/1.English Grammar"  # 替换为 .md 文件路径
  # 参数2
  old_image_prefix="https://github.com/silent-wuhen/Blog_picture01/blob/main/3.%E6%96%87%E6%A1%A3%E5%9B%BE%E7%89%87/8.%E8%8B%B1%E8%AF%AD/"  # 要修改的图片网址前缀
  # 参数3
  new_image_prefix="https://cdn.jsdelivr.net/gh/silent-wuhen/Blog_picture01/H03_其他/1.English/1.English Grammar"  # 替换为新的图片网址前缀
  
  echo "File Path: $md_file_path"
  echo "Old Prefix: $old_image_prefix"
  echo "New Prefix: $new_image_prefix"
  
  # 检查文件是否存在
  if [ ! -f "$md_file_path" ]; then
      echo "Error: File '$md_file_path' not found!"
      exit 1
  fi
  
  # 使用 sed 替换图片路径前缀
  sed -i "s|$old_image_prefix|$new_image_prefix|g" "$md_file_path"
  
  echo "完成"
  
  ```
  
  



