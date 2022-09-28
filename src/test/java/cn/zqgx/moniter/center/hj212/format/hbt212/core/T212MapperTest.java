package cn.zqgx.moniter.center.hj212.format.hbt212.core;

import cn.zqgx.moniter.center.hj212.format.hbt212.exception.T212FormatException;
import cn.zqgx.moniter.center.hj212.format.hbt212.model.Data;
import org.junit.jupiter.api.Test;
import org.springframework.util.Assert;

import java.io.IOException;

public class T212MapperTest {

    T212Mapper mapper =  new T212Mapper().enableDefaultParserFeatures().enableDefaultVerifyFeatures();

    @Test
    public void readData() throws T212FormatException, IOException {
        String msg = "##0344QN=20220928142812336;ST=22;CN=2011;PW=123456;MN=JSRCTD000YD107;Flag=5;CP=&&DataTime=20220928142812;l01001-Flag=N,l01001-Rtd=119.90287;l01002-Flag=N,l01002-Rtd=32.48505;a34002-Rtd=5,a34002-Flag=N;a34004-Rtd=4,a34004-Flag=N;a21026-Rtd=22.25,a21026-Flag=N;a21004-Rtd=22.7,a21004-Flag=N;a21005-Rtd=0.36,a21005-Flag=N;a05024-Rtd=8.82,a05024-Flag=N&&9241\r\n";
        Data data = mapper.readData(msg);
        Assert.notNull(data,"IsNUll");
    }
}
