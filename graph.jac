// Edges
edge married;
edge child;
edge member;

// Nodes
node person {
    has id;
    has family_id;
    has name;
    has date_of_birth;
    has profession;
    has gender;
    has deceased;
    has parents;
    has children;
    has spouse;
    has height;
    has weight;
    has BMI;
    

    can get_BMI{
        BMI = weight/(height*height)
    }
    

}
node family_root {
    has id;
    has family_name;
}

// Graphs
graph family_tree {
    has anchor family_root;
    spawn {
        family_root = spawn node::family_root;
    }
}