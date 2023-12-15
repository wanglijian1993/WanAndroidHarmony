
import Logger from '../../../utils/Logger'
import { LoggerView } from '../LoggerView'
import HomeModel from '../../viewmodel/home/HomeModel'
import { Banners } from '../../../bean/MainBean'

@Component
export struct HomePage{

  private swiper:SwiperController=new SwiperController()
  @State banners:Array<Banners>=null;


  aboutToAppear(){
   Logger.info("HomePage-aboutToAppear")
    HomeModel.getBanners().then((value=>{
      this.banners=value
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