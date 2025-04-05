#!/bin/bash

# 参数1:替换为 .md 文件路径
md_file_path="C:\\Users\\wuhen\\Desktop\\计算机科学速成\\1.Crash Course Computer Science（未完结）.md"

# 参数2:要修改的图片网址前缀
old_image_prefix="https://github.com/silent-wuhen/Blog_picture01/blob/main/3.%E6%96%87%E6%A1%A3%E5%9B%BE%E7%89%87/1.%E8%AE%A1%E7%AE%97%E6%9C%BA%E7%A7%91%E5%AD%A6%E9%80%9F%E6%88%90"

# 参数3:替换为新的图片网址前缀
new_image_prefix="https://cdn.jsdelivr.net/gh/silent-wuhen/Blog_picture01/H02_计算机基础/1.计算机导论/1.计算机科学速成"

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
