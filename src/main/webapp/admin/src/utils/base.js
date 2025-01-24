const base = {
    get() {
        return {
            url : "http://localhost:8080/ssm7632x/",
            name: "ssm7632x",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssm7632x/front/dist/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "《数字图像处理》教学演示系统"
        } 
    }
}
export default base
