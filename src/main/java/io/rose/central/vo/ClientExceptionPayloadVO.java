package io.rose.central.vo;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;


@Data
@JsonIgnoreProperties(ignoreUnknown = true)
public class ClientExceptionPayloadVO {

    /** Client exception type */
    private String type;
    /** Client exception title */
    private String title;
    /** Client exception detail */
    private String detail;
}
