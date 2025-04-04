#!/bin/bash

# 参数1:替换为 .md 文件路径
md_file_path="D:\\study\\H04_数据分析与挖掘\\5.数分项目\\1.商品数据大数据可视化系统\\商品大数据可视化系统.md"

# 参数2:要修改的图片网址前缀
old_image_prefix="https://github.com/silent-wuhen/Blog_picture01/blob/main/3.%E6%96%87%E6%A1%A3%E5%9B%BE%E7%89%87/11.PythonProject/1.%E5%95%86%E5%93%81%E6%95%B0%E6%8D%AE%E5%8F%AF%E8%A7%86%E5%8C%96%E5%88%86%E6%9E%90%E5%A4%A7%E5%B1%8F"

# 参数3:替换为新的图片网址前缀
new_image_prefix="https://cdn.jsdelivr.net/gh/silent-wuhen/Blog_picture01/H04_数据分析与挖掘/5.数分项目/1.商品大数据可视化系统"

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
