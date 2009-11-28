import java.util.ArrayList;
import java.util.List;
import org.jruby.embed.ScriptingContainer;
import com.vaadin.Application;

public class Runner extends Application {
  @Override
  public void init() {
    ScriptingContainer container = new ScriptingContainer();
    List<String> loadPaths = new ArrayList<String>();
    loadPaths.add(this.getContext().getBaseDirectory().getAbsolutePath());
    container.getProvider().setLoadPaths(loadPaths);
    
    Object receiver = container.runScriptlet("require 'main'; Vaadin");
    Object[] args = new Object[1];
    args[0] = this;
    container.callMethod(receiver, "application=", args, Object.class);
  }
}