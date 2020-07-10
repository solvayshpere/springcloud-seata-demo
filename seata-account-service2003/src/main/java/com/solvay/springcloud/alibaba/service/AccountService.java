package com.solvay.springcloud.alibaba.service;

import java.math.BigDecimal;

/**
 * @Author solvay
 * @Since 2020/3/18 23:22
 */
public interface AccountService {

    void decrease(Long userId, BigDecimal money);
}
