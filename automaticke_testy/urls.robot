*** Settings ***
Documentation   Resource file
Library     SeleniumLibrary

*** Variables ***
${url_root}   https://www.tesla.com/
${url_models}   https://www.tesla.com/models
${url_model3}   https://www.tesla.com/model3
${url_modelx}   https://www.tesla.com/modelx
${url_modely}   https://www.tesla.com/modely
${url_login}   https://auth.tesla.com/oauth2/v1/authorize?redirect_uri=https%3A%2F%2Fwww.tesla.com%2Fteslaaccount%2Fowner-xp%2Fauth%2Fcallback&response_type=code&client_id=ownership&scope=offline_access%20openid%20ou_code%20email&audience=https%3A%2F%2Fownership.tesla.com%2F&locale=en-US
${url_register}  https://auth.tesla.com/oauth2/v1/register?redirect_uri=https%3A%2F%2Fwww.tesla.com%2Fteslaaccount%2Fowner-xp%2Fauth%2Fcallback&response_type=code&client_id=ownership&scope=offline_access%20openid%20ou_code%20email&audience=https%3A%2F%2Fownership.tesla.com%2F&locale=en-US
${url_shop}  https://shop.tesla.com/
${url_shop_noredirect}  https://shop.tesla.com/?redirect=no

${url_careers}  https://www.tesla.com/careers
${url_careers_search}  https://www.tesla.com/careers/search/
${url_careers_search_cz}  https://www.tesla.com/careers/search/?country=CZ
${url_careers_search_de}  https://www.tesla.com/careers/search/?country=DE
${url_careers_internships}  https://www.tesla.com/careers/internships

${url_manufacturing}  https://www.tesla.com/manufacturing
${url_cellteam}  https://www.tesla.com/cell-jobs
${url_ai}  https://www.tesla.com/AI

#${url_account}  https://