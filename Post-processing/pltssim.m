x=1:81;
ssim1=[0.3602,0.5068,0.5424,0.5272,0.5177,0.4532,0.5146,0.5640,0.5738,0.5607,0.5704,0.4109,0.3307,0.4581,0.5890,0.1824,0.5817,0.3824,0.5788,0.5515,0.5814,0.0963,0.4670,0.4859,0.5286,0.4522,0.2264,0.3784,0.5919,0.5749,0.5715,0.5272,0.5600,0.4884,0.5308,0.6128,0.4518,0.6039,0.5882,0.5921,0.6036,0.6037,0.5978,0.5880,0.5737,0.5726,0.5644,0.5549,0.5277,0.5188,0.5133,0.5156,0.5247,0.5391,0.5490,0.5536,0.5564,0.5590,0.5734,0.5640,0.5673,0.5660,0.5613,0.5733,0.5878,0.5942,0.6053,0.5938,0.5854,0.5745,0.5451,0.5640,0.5617,0.5673,0.5667,0.5757,0.5820,0.5884,0.6035,0.6029,0.6379];
ssim2=[0.5937,0.6140,0.6106,0.6030,0.6103,0.6041,0.6188,0.6147,0.6204,0.6167,0.6165,0.5940,0.6029,0.6120,0.6223,0.5422,0.6195,0.6132,0.6206,0.6157,0.6206,0.4271,0.6093,0.6185,0.6149,0.6145,0.5810,0.6049,0.6179,0.6204,0.6157,0.6186,0.6181,0.6084,0.6147,0.6129,0.6061,0.6018,0.5891,0.5939,0.6033,0.6031,0.6039,0.5927,0.5787,0.5726,0.5680,0.5701,0.5411,0.5239,0.5148,0.520,0.5243,0.5379,0.5510,0.5566,0.5649,0.5672,0.5769,0.5740,0.5785,0.5743,0.5664,0.5771,0.5923,0.6064,0.6108,0.6007,0.5969,0.5854,0.5557,0.5689,0.5605,0.5693,0.5654,0.5757,0.5800,0.5921,0.6113,0.6144,0.6434];
plot(x,ssim1,'r');hold on;
plot(x,ssim2,'b');
ylabel('Structural Similarity Index');
xlabel('Frame under execution');
legend('Temporal differencing','Modified Temporal differencing');