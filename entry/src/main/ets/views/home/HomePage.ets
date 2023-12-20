
import Logger from '../../../utils/Logger'
import HomeModel from '../../viewmodel/home/HomeModel'
import { Article, Banners } from '../../../bean/MainBean'
import { WIDTH_100,HEIGHT_100 } from '../../../constants/CommonConstants'

@Component
export struct HomePage{

  private swiper:SwiperController=new SwiperController()
  @State banners:Array<Banners>=null;
  @State index:number=0
  @State pageSzie:number=10
  @State articles:Array<Article>=[]
  private scroll:Scroller =new Scroller()

  aboutToAppear(){
   Logger.info("HomePage-getBanners")
    HomeModel.getBanners().then((value=>{
      this.banners=value
    }))
    Logger.info("HomePage-getHomeArticle")

    HomeModel.getHomeArticle(this.index,this.pageSzie).then((value=>{
     this.articles=value.datas
    }))

  }

  build(){
    Column(){
      Swiper(this.swiper){
        ForEach(this.banners,(item,index)=>{
          Image(this.banners[index].imagePath)
        })
      }.height('30%')
      .width(WIDTH_100)
      List(){
        ForEach(this.articles,(value:Article)=>{
          ListItem(){
          this.article(value.title,value.fresh,value.shareUser,value.shareDate,value.collect)
          }.height('100vp')
          .width(WIDTH_100)
        },(item,index)=>(JSON.stringify(item)+index))
        }
      .width(WIDTH_100)
      .height(HEIGHT_100)
      .backgroundColor($r('app.color.start_window_background'))

    }
    .width(WIDTH_100)


    }
  @Builder article(title:string,isNewArticle:boolean,author:string,time:string,isCollect:boolean){
    Row(){
      Column({space:20}){
        Row({space:5}){
          if(isNewArticle){
            Text('New')
              .fontColor($r('app.color.home_hot_article'))
              .fontStyle(FontStyle.Italic)
          }
          Text(title)
        }
        Text(`作者：${author}`)
      }
      .alignItems(HorizontalAlign.Start)
      Blank()
      Column({space:10}){
        Text(time)
        Image(isCollect?$r('app.media.ic_home_collect_red'):$r('app.media.ic_home_collect_red'))
          .height(20)
          .width(20)
      }
    }
    .height(60)
    .width(WIDTH_100)
    .padding({top:5,left:7,right:7,bottom:5})
  }

}