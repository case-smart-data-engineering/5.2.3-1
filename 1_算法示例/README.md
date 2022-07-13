# 算法示例

## 使用指南

1. 按 `CTRL + P` 打开命令行面板，输入 "terminal: Create New Terminal" 打开一个命令行终端.
2. 在命令行里输入 `cd 1_算法示例` 并按 `ENTER` 进入"算法示例"目录。
3. 在命令行里输入 `bash downlaod_dataset.sh` 并按 `ENTER` 下载数据集。
4. 在命令行里输入 `python preprocessing.py` 按 `ENTER` 对数据集进行图像预处理。
5. 在命令行里输入 `python main.py` 按 `ENTER` 进行YOLO训练。
6. 在命令行里输入 `python show_yolo.py` 按 `ENTER` 使用训练好的YOLO模型对测试数据集的训练效果。

### YOLO模型的训练


`main.py`主程序开头可设置相关超参数：

```python
# 初始化参数
# EPOCHS: 总的训练次数
# HISTORICAL_EPOCHS: 历史训练次数，用于模型的加载
# - -1表示最近一次训练的模型
# - 0表示不加载历史模型
# - >0表示对应训练次数的模型
# SAVE_EVERY: 保存频率，每训练多少次保存一次
# BATCH_SIZE: 每次喂入的数据量
# LR: 学习率
EPOCHS = 50
HISTORICAL_EPOCHS = -1
SAVE_EVERY = 5
BATCH_SIZE = 4
LR = 1e-4
```
除此之外，其他文件开头也有自定义参数，可根据需要自行调整。
运行`main.py`函数将产生每个epoch生成的模型，并将模型存入
`根目录/output/model`文件夹下。

## YOLO模型的预测

`show_yolo.py`将默认使用最后一次训练的模型，并展示数据集从下标0开始的10张图片，可根据需要自行调整。

生成的效果图片默认位于`output/img`目录下，其中前缀为pred、target的图片分别表示预测图片和真实图片，下标一一对应

## 代码目录结构介绍

- `dataset.py`：YOLO针对输入数据集的处理函数
- `main.py`： 模型训练的主函数
- `preprocessing.py`：VOC2012图像数据集预处理，将VOC数据集处理为适合YOLO处理的数据集格式
- `show_yolo.py`：使用训练好的YOLO模型进行预测和结果展示
- `util.py`：NMS、特征图转换等函数类
- `yolo_v1_loss_vectorization.py`：矢量化的损失函数计算
- `yolo_v1_loss.py`：非矢量化的损失函数计算；
- `yolo_v1.py`：构造YOLO模型结构；


