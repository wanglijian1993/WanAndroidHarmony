
import Logger from '../../../utils/Logger'
import { LoggerView } from '../LoggerView'
import { httpRequestGet } from  '../../../https/HttpUtils'
import { ResponseResult } from '../../../bean/ResponseResult'
import Const from '../../../constants/CommonConstants'
import { BASE_URL,BANNER_URL } from '../../../https/HttpUrls'
import { Banners } from '../../../bean/MainBean'

@Component
export struct HomePage{

  private swiper:SwiperController=new SwiperController()
  @State banners:Array<Banners>=null;

  getBanners():Promise<Array<Banners>>{
    return  new Promise<Array<Banners>>(async (resolve:Function,reject:Function)=>{
      let url:string=`${BASE_URL}${BANNER_URL}`;
      Logger.info(`----------url${url}`)
      httpRequestGet(url).then((data:ResponseResult)=>{
        if (data.errorCode === Const.SERVER_CODE_SUCCESS) {
          resolve(data.data);
        } else {
          Logger.error('getBanner failed', JSON.stringify(data));
          reject($r('app.string.page_none_msg'));
        }
      }).catch((error:Error)=>{
        reject($r('app.string.http_error_message'))
      });
    });

  }
  aboutToAppear(){
   Logger.info("HomePage-aboutToAppear")
    this.getBanners().then((value=>{
      this.banners=value
      this.banners.forEach(element => {
        Logger.info(`banners:${element.imagePath}`)

      });
    }))

  }



  build(){
    Column(){
      LoggerView({log:'HomePage_build'})
      Swiper(this.swiper){
       ForEach(this.banners,(item,index)=>{
         Image(this.banners[index].imagePath)
       })
      }.height('40%')

    }

  }

}