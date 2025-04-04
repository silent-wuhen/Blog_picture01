# Blog_picture01
图床

输入：

git add .

git commit -m "更新图片"

git push



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

  ```
  #!/bin/bash
  
  # 定义参数
  md_file_path="C:/Users/wuhen/Desktop/商品大数据可视化系统.md"  # 替换为 .md 文件路径
  old_image_prefix="https://github.com/sile"  # 替换为要修改的图片网址前缀
  new_image_prefix="https://cdn.jsdelivr.net/"  # 替换为新的图片网址前缀
  
  # 检查文件是否存在
  if [ ! -f "$md_file_path" ]; then
      echo "Error: File '$md_file_path' not found!"
      exit 1
  fi
  
  # 使用 sed 替换图片路径前缀
  sed -i "s|$old_image_prefix|$new_image_prefix|g" "$md_file_path"
  
  echo "完成"
  
  ```

  



