//package com.dx.auth.authorization.config.custom;
//
//import org.springframework.security.oauth2.common.DefaultOAuth2AccessToken;
//import org.springframework.security.oauth2.common.OAuth2AccessToken;
//import org.springframework.security.oauth2.provider.OAuth2Authentication;
//import org.springframework.security.oauth2.provider.token.store.JwtAccessTokenConverter;
//
//import java.util.Map;
//
///**
// * 自定义JwtAccessToken转换器
// *
// * @author yaoj
// * @version 1.0
// * @copyright 广州明动软件有限公司 Copyright (c) 2018
// * @since 2018-12-13
// */
//public class JwtAccessToken extends JwtAccessTokenConverter {
//
//    /**
//     * 生成token
//     * @param accessToken
//     * @param authentication
//     * @return
//     */
//    @Override
//    public OAuth2AccessToken enhance(OAuth2AccessToken accessToken, OAuth2Authentication authentication) {
//        DefaultOAuth2AccessToken defaultOAuth2AccessToken = new DefaultOAuth2AccessToken(accessToken);
//
//        // 设置额外用户信息
//        BaseUser baseUser = ((BaseUserDetail) authentication.getPrincipal()).getBaseUser();
//        baseUser.setPassword(null);
//        // 将用户信息添加到token额外信息中
//        defaultOAuth2AccessToken.getAdditionalInformation().put(Constant.USER_INFO, baseUser);
//
//        return super.enhance(defaultOAuth2AccessToken, authentication);
//    }
//
//    /**
//     * 解析token
//     * @param value
//     * @param map
//     * @return
//     */
//    @Override
//    public OAuth2AccessToken extractAccessToken(String value, Map<String, ?> map){
//        OAuth2AccessToken oauth2AccessToken = super.extractAccessToken(value, map);
//        convertData(oauth2AccessToken, oauth2AccessToken.getAdditionalInformation());
//        return oauth2AccessToken;
//    }
//
//    private void convertData(OAuth2AccessToken accessToken,  Map<String, ?> map) {
//        accessToken.getAdditionalInformation().put(Constant.USER_INFO,convertUserData(map.get(Constant.USER_INFO)));
//
//    }
//
//    private BaseUser convertUserData(Object map) {
//        String json = JsonUtils.deserializer(map);
//        BaseUser user = JsonUtils.serializable(json, BaseUser.class);
//        return user;
//    }
//}
