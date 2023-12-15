
import { ArticleInfo, Banners } from '../../../bean/MainBean';
import { ResponseResult } from '../../../bean/ResponseResult';
import { BANNER_URL, BASE_URL, HOME_ARTICLE } from '../../../https/HttpUrls';
import { httpRequestGet } from '../../../https/HttpUtils';
import Logger from '../../../utils/Logger';
import Const from '../../../constants/CommonConstants'
 class HomeModel{


  getBanners():Promise<Array<Banners>>{
    return  new Promise<Array<Banners>>(async (resolve:Function,reject:Function)=>{
      let url:string=`${BASE_URL}${BANNER_URL}`;
      httpRequestGet(url).then((result:ResponseResult)=>{
        // @ts-ignore
        if (result.errorCode === Const.SERVER_CODE_SUCCESS) {
          resolve(result.data);
        } else {
          Logger.error('getBanner failed', JSON.stringify(result));
          reject($r('app.string.page_none_msg'));
        }
      }).catch((error:Error)=>{
        reject($r('app.string.http_error_message'))
      });
    });

  }


  getHomeArticle(index:number,pageSize:number):Promise<ArticleInfo>{
   return new Promise<ArticleInfo>(async (resolve:Function,reject:Function)=>{
      let url=`${BASE_URL}${HOME_ARTICLE}${index}/json`
      url+='?page_size='+pageSize
     httpRequestGet(url).then((result:ResponseResult)=>{
       if(result.errorCode === Const.SERVER_CODE_SUCCESS){
         resolve(result.data);
       }else{
         reject($r('app.string.page_none_msg'))
       }
     }).catch((error:Error)=>{
       reject($r('app.string.http_error_message'))
     })
    })
}
}

let homeModel = new HomeModel();
export default homeModel as HomeModel;
