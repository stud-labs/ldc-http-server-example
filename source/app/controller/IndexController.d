module app.controller.IndexController;

import hunt.framework;

class IndexController : Controller
{
    mixin MakeController;

    @Action
    string index()
    {
        return "Hello world!";
    }
}

