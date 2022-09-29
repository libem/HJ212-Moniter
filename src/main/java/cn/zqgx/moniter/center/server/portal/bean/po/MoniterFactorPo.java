package cn.zqgx.moniter.center.server.portal.bean.po;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@TableName("T_MONITER_FACTOR")
public class MoniterFactorPo {
    @TableId("id")
    private String id;

    @TableField("mncode")
    private String mncode;

    @TableField("data_time")
    private String dataTime;

    @TableField("factor")
    private String factor;

    @TableField("value")
    private String value;

    @TableField("data_status")
    private String dataStatus;

    //数据类型:实时值Rtd、均值Avg...
    @TableField("data_type")
    private String dataType;

    @TableField("time")
    private LocalDateTime time;

}
