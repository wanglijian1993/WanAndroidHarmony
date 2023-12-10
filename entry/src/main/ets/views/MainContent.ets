
@Component
export default  struct MainContent{
  @State content:string=''
  build(){
    Text(this.content)
  }
}