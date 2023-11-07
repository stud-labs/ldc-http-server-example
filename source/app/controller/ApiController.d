module app.controller.ApiController;

import hunt.framework;
import std.json : JSONValue;
import std.stdio;
import std.conv;

class ApiController : Controller
{
  mixin MakeController;
  @Action
  JsonResponse testApi() {
    import std.datetime;
    import std.datetime.date : DateTime;

    auto dt = Clock.currTime();
    auto dts = dt.toISOExtString();
    JSONValue js;
    js["currtime"] = dts;
    JsonResponse resp = new JsonResponse(js);
    return resp;
  }

  @Action
  JsonResponse echo(string msg) {
    JSONValue js;
    js["echo"] = msg;
    auto resp = new JsonResponse(js);
    return resp;
  }

  @Action
  JsonResponse fact(string n) {
    JSONValue js;
    auto res = fact(to!int(n));
    js["result"] = to!string(res);
    auto resp = new JsonResponse(js);
    return resp;
  }

  int fact(int n) {
    if (n==0) return 1;
    if (n==1) return 1;
    return n*fact(n-1);
  }
}
