import hilog from '@ohos.hilog';
import { NewsTypeBean } from '../../bean/MainBean';
import Const  from '../../constants/CommonConstants';
import Logger from '../../utils/Logger';
import MainContent from './MainContent';
import TitleBar from './TitleBar';
@Component
export default  struct MainView{

@State currentIndex:number=0;
@State tabsType:NewsTypeBean[]=Const.TABS_TYPES
  @State currentPage: number = 1;
  private tabControl=new TabsController()
  @Builder TabBuilder(targetIndex:number){
    Column(){
      Image(this.currentIndex==targetIndex? this.tabsType[targetIndex].selectIcon : this.tabsType[targetIndex].nonSelectIcon)
        .size({ width: 25, height: 25 })
      Text(this.tabsType[targetIndex].name)
        .fontColor(this.currentIndex==targetIndex? $r('app.color.main_menu_select_color') :$r('app.color.main_menu_non_select_color'))
    }
    .width('100%')
    .height(50)
    .justifyContent(FlexAlign.Center)
    .onClick(()=>{
      this.currentIndex=targetIndex;
       this.tabControl.changeIndex(this.currentIndex)
    })
  }
  build(){
    Column(){
      TitleBar({leftVisible:false,title:this.tabsType[this.currentIndex].name})
      Tabs({barPosition:BarPosition.End,controller:this.tabControl}){
        ForEach(this.tabsType,(item:NewsTypeBean,index:number)=>{
          TabContent(){
            Column(){
              MainContent({index:index})
            }
            .width('100%')
            .height('100%')
            .backgroundColor('#007DFF')
          }
          .tabBar(this.TabBuilder(index))
        },(item:NewsTypeBean)=>JSON.stringify(item))
      }.height('95%')
      .onChange((index)=>{
        this.currentIndex=index;
      })
    }

  }

}