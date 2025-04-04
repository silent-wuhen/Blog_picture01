#!/bin/bash

# 参数1
md_file_path="D:/study/H01_开发技能/1.Git&Github/1.Git基础/Git基础.md"  # 替换为 .md 文件路径
# 参数2
old_image_prefix="https://github.com/silent-wuhen/Blog_picture01/blob/main/3.%E6%96%87%E6%A1%A3%E5%9B%BE%E7%89%87/2.Git"  # 替换为要修改的图片网址前缀
# 参数3
new_image_prefix="https://cdn.jsdelivr.net/gh/silent-wuhen/Blog_picture01/H01_开发技能/1.Git&Github/1.Git基础/Git基础"  # 替换为新的图片网址前缀

# 检查文件是否存在
if [ ! -f "$md_file_path" ]; then
    echo "Error: File '$md_file_path' not found!"
    exit 1
fi

# 使用 sed 替换图片路径前缀
sed -i "s|$old_image_prefix|$new_image_prefix|g" "$md_file_path"

echo "完成"
