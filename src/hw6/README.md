## 題目
請實踐從continuous-time的state space轉換到discrete-time的形式 \
作法可使用數值積分的方式實現，積分得出狀態後  \
因此能繪出 位置-時間圖 (可使用rqt_plot 或 PlotJuggler)
### 指令
```
	roscore
	rosrun HW6 hw6
	rosbag record -O hw6 /Position
	-------after recording------------------
	rosrun plotjuggler PlotJuggler
	(之後點file,Load data,點選你的bag file)
```

### PlotJuggler
下載網址:https://github.com/facontidavide/PlotJuggler 
及操作

## Final result

